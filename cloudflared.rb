class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2019.8.1-darwin-amd64.tgz'
  sha256 '02f3840c479d5b47b0a32f0e3e14e1558e9b392ac1d626cba2ea796c024e8f22'
  version '2019.8.1'
  def install
    bin.install 'cloudflared'
  end
end
