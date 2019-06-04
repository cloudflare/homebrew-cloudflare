class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2019.6.0-darwin-amd64.tgz'
  sha256 '2878a204a47a3cd82348a592ee9c2ee3a569d94b6ff70757801d4c056f2ef0e4'
  version '2019.6.0'
  def install
    bin.install 'cloudflared'
  end
end
