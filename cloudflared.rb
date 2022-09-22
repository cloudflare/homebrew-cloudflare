class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://packages.argotunnel.com/dl/cloudflared-2022.9.1-darwin-amd64.tgz'
  sha256 'ec4bb5cf1ae26fd3e54b794961cfa4010e5f0da424a8b22005059c5f296b6adc'
  version '2022.9.1'
  def install
    bin.install 'cloudflared'
  end
end
