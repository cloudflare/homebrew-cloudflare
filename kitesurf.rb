class Kitesurf < Formula
  desc "Interactive terminal browser for the web"
  homepage "https://kitesurf.dev"
  url "file://#{__dir__}/kitesurf.zig"
  version "0.1.0"
  sha256 "8124a354e2841f43f0ea114f252a333b7e46fea53294c274db58224352c90fef"

  depends_on "zig" => :build
  depends_on "homebrew/core/curl"

  def install
    curl = Formula["homebrew/core/curl"]
    system "zig", "build-exe", "kitesurf.zig",
           "-O", "ReleaseSafe",
           "-lc", "-lcurl",
           "-I#{curl.opt_include}", "-L#{curl.opt_lib}",
           "-femit-bin=kitesurf"
    bin.install "kitesurf"
  end

  test do
    assert_match "kitty        Default when supported", shell_output("#{bin}/kitesurf --help")
    assert_match "ansi         Selectable terminal text", shell_output("#{bin}/kitesurf -h")
    assert_match "Try 'kitesurf --help'", shell_output("#{bin}/kitesurf -m 2>&1", 2)
  end
end
