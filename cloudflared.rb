class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://packages.argotunnel.com/dl/cloudflared-2023.8.2-darwin-amd64.tgz'
  sha256 '154395f8f7da7c3af799f73c07386e16e162152cbb1d8a1e9035db706c03687c'
  version '2023.8.2'
  def install
    bin.install 'cloudflared'
  end
end
