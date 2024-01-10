class Cloudflared < Formula
  deprecate! date: "2024-01-10", because: "moved to homebrew-core repository"
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://packages.argotunnel.com/dl/cloudflared-2024.1.1-darwin-amd64.tgz'
  sha256 '17082f7f048cc9f684391f16b46d8cb76ea9bb41e9eb4b9293b5162c2a5500a3'
  version '2024.1.1'
  def install
    bin.install 'cloudflared'
  end
end
