class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://packages.argotunnel.com/dl/cloudflared-2021.12.3-darwin-amd64.tgz'
  sha256 '8b143927ac5c05b18b59c2e19e7b7794fe464876af3e45062579a4b2c0327b80'
  version '2021.12.3'
  def install
    bin.install 'cloudflared'
  end
end
