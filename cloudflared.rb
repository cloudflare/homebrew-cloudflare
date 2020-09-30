class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2020.9.3-darwin-amd64.tgz'
  sha256 'd6efbfe16f0f8508b6dc6981ee5e26ebf2bf5da427515ee38ac48dd53d14ac46'
  version '2020.9.3'
  def install
    bin.install 'cloudflared'
  end
end
