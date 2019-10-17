class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2019.10.1-darwin-amd64.tgz'
  sha256 'c2d93a93336ba181170ea7ad45a158b776f990d33c4ddadab684e8bbf6c93f8e'
  version '2019.10.1'
  def install
    bin.install 'cloudflared'
  end
end
