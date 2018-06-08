class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2018.6.0-darwin-amd64.tgz'
  sha256 'ed5aaca0eff33582e91aae36b2cd8b0c396b336eff80b24acc27e5770823d877'
  version '2018.6.0'

  def install
    bin.install 'cloudflared'
  end

  plist_options :startup => true

  def plist
    <<~EOS
      <?xml version="1.0" encoding="UTF-8"?>
      <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
      <plist version="1.0">
        <dict>
          <key>Label</key>
          <string>#{plist_name}</string>
          <key>ProgramArguments</key>
          <array>
            <string>#{opt_bin}/cloudflared</string>
            <string>proxy-dns</string>
          </array>
          <key>RunAtLoad</key>
          <true/>
          <key>KeepAlive</key>
          <true/>
          <key>StandardErrorPath</key>
          <string>#{var}/log/cloudflared.log</string>
          <key>StandardOutPath</key>
          <string>#{var}/log/cloudflared.log</string>
        </dict>
      </plist>
    EOS
  end
end
