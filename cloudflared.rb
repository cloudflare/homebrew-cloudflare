class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2018.5.5-darwin-amd64.tgz'
  sha256 'c24341cb3127e4facef7c1b466189c1a79e3f9fa8e56976ac6d7a8e0e628b19d'
  version '2018.5.5'
  def install
    bin.install 'cloudflared'
  end
end
