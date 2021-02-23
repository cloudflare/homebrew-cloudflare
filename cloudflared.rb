class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2021.2.4-darwin-amd64.tgz'
  sha256 '0035121bcdc7f042c576f841f9e96f5a823c8a9fcf74c01218ee319f86fd9ea8'
  version '2021.2.4'
  def install
    bin.install 'cloudflared'
  end
end
