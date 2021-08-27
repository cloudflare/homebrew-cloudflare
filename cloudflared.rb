class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2021.8.6-darwin-amd64.tgz'
  sha256 'ef102fdd4d845e9abb2a0d42bba555f57c80c35385d6d017bc61e8887505e30b'
  version '2021.8.6'
  def install
    bin.install 'cloudflared'
  end
end
