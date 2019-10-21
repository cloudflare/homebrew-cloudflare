class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2019.10.3-darwin-amd64.tgz'
  sha256 'a5ea76898a97c7cc1ac7a13414d0e13fa6effb6c27e265fbcfdedcc61441fc86'
  version '2019.10.3'
  def install
    bin.install 'cloudflared'
  end
end
