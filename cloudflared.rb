class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2018.4.8-darwin-amd64.tgz'
  sha256 'ef04a06efd5e718ff05658f2e250dea68dfee8a1a1a76435f08728bf79bebb3d'
  version '2018.4.8'
  def install
    bin.install 'cloudflared'
  end
end
