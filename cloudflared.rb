class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2018.4.4-darwin-amd64.tgz'
  sha256 '1f219fc75db3ea2d0dc8b405b6a56a2347db066abcc3fa2d4939b8777ed6d2e6'
  version '2018.4.4'
  def install
    bin.install 'cloudflared'
  end
end
