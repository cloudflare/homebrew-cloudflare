const std = @import("std");
const builtin = @import("builtin");
const c = @cImport({
    @cDefine("_DEFAULT_SOURCE", "1");
    @cInclude("curl/curl.h");
    @cInclude("errno.h");
    @cInclude("poll.h");
    @cInclude("signal.h");
    @cInclude("stdio.h");
    @cInclude("termios.h");
    @cInclude("unistd.h");
});

const buffer_size = 16384;
const reset = "\x1b[?1016l\x1b[?1006l\x1b[?1003l\x1b[?1002l\x1b[?1000l" ++
    "\x1b[<u\x1b[?25h\x1b[?1049l";
const help =
    \\Usage: kitesurf [-m MODE] [URL]
    \\
    \\Open a website in an interactive terminal browser.
    \\
    \\Options:
    \\  -m MODE      Use a specific render mode (ansi or kitty).
    \\  -h, --help   Show this help.
    \\
    \\Render modes:
    \\  kitty        Default when supported. Pixel-exact full-viewport graphics;
    \\               text is not selectable. Requires Kitty graphics support.
    \\  ansi         Selectable terminal text; images use Kitty graphics when
    \\               available, or Unicode half-blocks otherwise. Works in
    \\               any truecolor terminal.
    \\
    \\Without -m, Kitty is used when supported; otherwise ANSI is used.
    \\URL is optional. Example: kitesurf -m ansi https://celso.io/
    \\
    \\This client uses the open Kitesurf playground at https://kitesurf.dev/.
    \\The playground is rate-limited; please do not abuse it.
    \\
;

var interrupted: c.sig_atomic_t = 0;

fn onSignal(signo: c_int) callconv(.c) void {
    @as(*volatile c.sig_atomic_t, @ptrCast(&interrupted)).* = signo;
}

fn errnoValue() c_int {
    return if (builtin.os.tag == .macos) c.__error().* else c.__errno_location().*;
}

fn writeAll(fd: c_int, bytes: []const u8) bool {
    var offset: usize = 0;
    while (offset < bytes.len) {
        const n = c.write(fd, bytes.ptr + offset, bytes.len - offset);
        if (n < 0 and errnoValue() == c.EINTR) continue;
        if (n <= 0) return false;
        offset += @intCast(n);
    }
    return true;
}

fn websocketAvailable() bool {
    const info = c.curl_version_info(c.CURLVERSION_NOW);
    var i: usize = 0;
    while (info.*.protocols[i] != null) : (i += 1) {
        if (std.mem.eql(u8, std.mem.span(info.*.protocols[i]), "wss")) return true;
    }
    return false;
}

fn runSession(curl: *c.CURL) u8 {
    var saved: c.struct_termios = undefined;
    if (c.tcgetattr(c.STDIN_FILENO, &saved) != 0) {
        c.perror("read terminal mode (interactive terminal required)");
        return 1;
    }
    var raw = saved;
    c.cfmakeraw(&raw);
    if (c.tcsetattr(c.STDIN_FILENO, c.TCSANOW, &raw) != 0) {
        c.perror("set terminal mode");
        return 1;
    }
    defer {
        _ = c.tcsetattr(c.STDIN_FILENO, c.TCSANOW, &saved);
        _ = writeAll(c.STDOUT_FILENO, reset);
    }

    var socket: c.curl_socket_t = undefined;
    if (c.curl_easy_getinfo(curl, c.CURLINFO_ACTIVESOCKET, &socket) != c.CURLE_OK or
        socket == c.CURL_SOCKET_BAD)
    {
        _ = c.fprintf(c.stderr(), "could not obtain WebSocket connection\n");
        return 1;
    }

    var outgoing: [buffer_size]u8 = undefined;
    var outgoing_length: usize = 0;
    var outgoing_offset: usize = 0;
    var send_ready = true;
    var receive_ready = true;

    while (@as(*volatile c.sig_atomic_t, @ptrCast(&interrupted)).* == 0) {
        if (outgoing_offset < outgoing_length and send_ready) {
            var sent: usize = 0;
            const result = c.curl_ws_send(curl, &outgoing[outgoing_offset],
                outgoing_length - outgoing_offset, &sent, 0, c.CURLWS_BINARY);
            outgoing_offset += sent;
            if (result == c.CURLE_AGAIN or (result == c.CURLE_OK and sent == 0)) {
                send_ready = false;
            } else if (result != c.CURLE_OK) {
                _ = c.fprintf(c.stderr(), "send WebSocket data: %s\n", c.curl_easy_strerror(result));
                return 1;
            }
            if (outgoing_offset == outgoing_length) {
                outgoing_offset = 0;
                outgoing_length = 0;
            }
        }

        if (receive_ready) {
            var incoming: [buffer_size]u8 = undefined;
            var received: usize = 0;
            var frame: [*c]const c.struct_curl_ws_frame = null;
            const result = c.curl_ws_recv(curl, &incoming, incoming.len, &received, &frame);
            if (result == c.CURLE_AGAIN) {
                receive_ready = false;
            } else if (result == c.CURLE_GOT_NOTHING) {
                return 0;
            } else if (result != c.CURLE_OK) {
                _ = c.fprintf(c.stderr(), "receive WebSocket data: %s\n", c.curl_easy_strerror(result));
                return 1;
            } else {
                if (frame != null and (frame.*.flags & c.CURLWS_CLOSE) != 0) return 0;
                if (received > 0 and frame != null and
                    (frame.*.flags & (c.CURLWS_PING | c.CURLWS_PONG)) == 0 and
                    !writeAll(c.STDOUT_FILENO, incoming[0..received]))
                {
                    c.perror("write terminal");
                    return 1;
                }
                continue; // Drain data already buffered by libcurl before waiting.
            }
        }

        var fds = [_]c.struct_pollfd{
            .{ .fd = socket, .events = @intCast(c.POLLIN | (if (outgoing_length > 0) c.POLLOUT else 0)), .revents = 0 },
            .{ .fd = c.STDIN_FILENO, .events = @intCast(if (outgoing_length > 0) @as(c_int, 0) else c.POLLIN), .revents = 0 },
        };
        const ready = c.poll(&fds, fds.len, -1);
        if (ready < 0 and errnoValue() == c.EINTR) continue;
        if (ready < 0) {
            c.perror("poll");
            return 1;
        }
        if ((fds[0].revents & (c.POLLERR | c.POLLHUP | c.POLLNVAL)) != 0) return 0;
        receive_ready = (fds[0].revents & c.POLLIN) != 0;
        send_ready = (fds[0].revents & c.POLLOUT) != 0;
        if ((fds[1].revents & (c.POLLERR | c.POLLHUP | c.POLLNVAL)) != 0) return 0;
        if ((fds[1].revents & c.POLLIN) != 0) {
            const n = c.read(c.STDIN_FILENO, &outgoing, outgoing.len);
            if (n < 0 and errnoValue() == c.EINTR) continue;
            if (n < 0) {
                c.perror("read terminal");
                return 1;
            }
            if (n == 0) return 0;
            outgoing_length = @intCast(n);
            send_ready = true;
        }
    }
    return @intCast(128 + @as(*volatile c.sig_atomic_t, @ptrCast(&interrupted)).*);
}

pub fn main(init: std.process.Init.Minimal) u8 {
    const args = init.args.vector;
    if (args.len == 2 and (std.mem.eql(u8, std.mem.span(args[1]), "--help") or
        std.mem.eql(u8, std.mem.span(args[1]), "-h")))
    {
        _ = writeAll(c.STDOUT_FILENO, help);
        return 0;
    }
    var mode: []const u8 = "";
    var url: []const u8 = "";
    var arg: usize = 1;
    if (args.len > 1 and std.mem.eql(u8, std.mem.span(args[1]), "-m")) {
        if (args.len < 3) {
            _ = c.fprintf(c.stderr(), "Usage: kitesurf [-m MODE] [URL]\nTry 'kitesurf --help' for more information.\n");
            return 2;
        }
        mode = std.mem.span(args[2]);
        arg = 3;
    }
    if (args.len > arg + 1 or (args.len > arg and std.mem.startsWith(u8, std.mem.span(args[arg]), "-"))) {
        _ = c.fprintf(c.stderr(), "Usage: kitesurf [-m MODE] [URL]\nTry 'kitesurf --help' for more information.\n");
        return 2;
    }
    if (args.len > arg) url = std.mem.span(args[arg]);

    _ = c.signal(c.SIGPIPE, onSignal);
    _ = c.signal(c.SIGINT, onSignal);
    _ = c.signal(c.SIGTERM, onSignal);
    _ = c.signal(c.SIGHUP, onSignal);

    if (c.curl_global_init(c.CURL_GLOBAL_DEFAULT) != c.CURLE_OK) {
        _ = c.fprintf(c.stderr(), "could not initialize libcurl\n");
        return 1;
    }
    defer c.curl_global_cleanup();
    if (!websocketAvailable()) {
        _ = c.fprintf(c.stderr(), "libcurl was built without WSS support; use Homebrew curl\n");
        return 1;
    }
    const curl = c.curl_easy_init() orelse {
        _ = c.fprintf(c.stderr(), "could not create libcurl handle\n");
        return 1;
    };
    defer c.curl_easy_cleanup(curl);

    const escaped_mode = c.curl_easy_escape(curl, mode.ptr, @intCast(mode.len));
    const escaped_url = c.curl_easy_escape(curl, url.ptr, @intCast(url.len));
    defer c.curl_free(escaped_mode);
    defer c.curl_free(escaped_url);
    if (escaped_mode == null or escaped_url == null) {
        _ = c.fprintf(c.stderr(), "could not encode URL\n");
        return 1;
    }
    const endpoint = std.fmt.allocPrintSentinel(std.heap.page_allocator,
        "wss://kitesurf.dev/tui?mode={s}&url={s}",
        .{ std.mem.span(escaped_mode), std.mem.span(escaped_url) }, 0) catch {
        _ = c.fprintf(c.stderr(), "could not allocate URL\n");
        return 1;
    };
    defer std.heap.page_allocator.free(endpoint);

    _ = c.curl_easy_setopt(curl, c.CURLOPT_URL, endpoint.ptr);
    _ = c.curl_easy_setopt(curl, c.CURLOPT_CONNECT_ONLY, @as(c_long, 2));
    _ = c.curl_easy_setopt(curl, c.CURLOPT_CONNECTTIMEOUT, @as(c_long, 15));
    _ = c.curl_easy_setopt(curl, c.CURLOPT_NOSIGNAL, @as(c_long, 1));
    const result = c.curl_easy_perform(curl);
    if (result != c.CURLE_OK) {
        _ = c.fprintf(c.stderr(), "connect to kitesurf.dev: %s\n", c.curl_easy_strerror(result));
        return 1;
    }
    return runSession(curl);
}
