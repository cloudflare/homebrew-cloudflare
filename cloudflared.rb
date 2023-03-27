class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://packages.argotunnel.com/dl/cloudflared-2023.3.1-darwin-amd64.tgz'
  sha256 '78c542bb2b6b5c93344612d98e09758232a27cf4736a8a567f1ab159d51b5c10'
  version '2023.3.1'
  def install
    bin.install 'cloudflared'
  end
end
