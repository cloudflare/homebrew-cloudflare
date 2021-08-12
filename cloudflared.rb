class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2021.8.2-darwin-amd64.tgz'
  sha256 '72c4624aff1f94ca6c297a63a86dbda44a65ae09e0b5ecb68a1ac4db19ba7b08'
  version '2021.8.2'
  def install
    bin.install 'cloudflared'
  end
end
