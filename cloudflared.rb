class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2018.4.7-darwin-amd64.tgz'
  sha256 '4bcce143b3e53fc66f430a6316a3c6b52844031c6b02ed0f7b1025a2421a0006'
  version '2018.4.7'
  def install
    bin.install 'cloudflared'
  end
end
