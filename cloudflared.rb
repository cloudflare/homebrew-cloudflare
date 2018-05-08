class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2018.5.1-darwin-amd64.tgz'
  sha256 '6b62379f11f3a568d79cf166ec1fbd26238a55aeb5c2cb5345be933d3732bdd1'
  version '2018.5.1'
  def install
    bin.install 'cloudflared'
  end
end
