class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://packages.argotunnel.com/dl/cloudflared-2021.10.0-darwin-amd64.tgz'
  sha256 '9d7d7094e58e45b2d3a5be08a3febd9427cfd472bcd88d246b3387d49d9ba891'
  version '2021.10.0'
  def install
    bin.install 'cloudflared'
  end
end
