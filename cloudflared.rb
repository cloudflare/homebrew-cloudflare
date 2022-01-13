class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://packages.argotunnel.com/dl/cloudflared-2022.1.1-darwin-amd64.tgz'
  sha256 '4a3f4a64e6196cb57983c729a1d75f9da9aedc69036f2d5d3f3f49778dc4cf26'
  version '2022.1.1'
  def install
    bin.install 'cloudflared'
  end
end
