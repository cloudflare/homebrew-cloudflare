class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2021.5.5-darwin-amd64.tgz'
  sha256 '4130e04822498346969e7e44cf50cbd21893e8e66c4f6c8c72d5d2561a4105ca'
  version '2021.5.5'
  def install
    bin.install 'cloudflared'
  end
end
