class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2021.3.6-darwin-amd64.tgz'
  sha256 'acc664a7fcf7c9658c56c2411208e184cb0c4ddbfbd7a7863f5c1d01e6244cfc'
  version '2021.3.6'
  def install
    bin.install 'cloudflared'
  end
end
