class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2018.4.3-darwin-amd64.tgz'
  sha256 'c245f14c0f3cee82da49cc14ce5d180bc82328be65c16452ebd687fe2869d194'
  version '2018.4.3'
  def install
    bin.install 'cloudflared'
  end
end
