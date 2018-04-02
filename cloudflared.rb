class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2018.4.0-darwin-amd64.tgz'
  sha256 '308da0afacc0e96b016999325d29da402e72ed7abde63eabce6dc250c29affa8'
  version '2018.4.0'
  def install
    bin.install 'cloudflared'
  end
end
