class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2018.7.2-darwin-amd64.tgz'
  sha256 'e43659f61715e1ccafa5d6f38aa3ff567d6b2df2d6648b468a2500875aa99969'
  version '2018.7.2'
  def install
    bin.install 'cloudflared'
  end
end
