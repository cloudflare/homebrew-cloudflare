class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://packages.argotunnel.com/dl/cloudflared-2023.2.2-darwin-amd64.tgz'
  sha256 'd32e3fe34cfbb545d944295d4eab0430a3039a9c0bb49fc13e6ab901477f4fdc'
  version '2023.2.2'
  def install
    bin.install 'cloudflared'
  end
end
