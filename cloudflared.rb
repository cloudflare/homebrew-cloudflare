class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://packages.argotunnel.com/dl/cloudflared-2021.12.2-darwin-amd64.tgz'
  sha256 '3e3eaedef0544d9aee2c61490e93b36a982f4934d40f2e0154d189fec5fc4bce'
  version '2021.12.2'
  def install
    bin.install 'cloudflared'
  end
end
