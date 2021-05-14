class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2021.5.3-darwin-amd64.tgz'
  sha256 '10f4cbf06fdc64f5b63dabf7c5b85367f55d7ff1f0cd2301ebb0bd7bddc4b424'
  version '2021.5.3'
  def install
    bin.install 'cloudflared'
  end
end
