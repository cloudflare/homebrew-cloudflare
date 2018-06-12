class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2018.6.1-darwin-amd64.tgz'
  sha256 '3c6ad7536849cfae2307c5646cb740e002e7031b43ff5a0e9281a8abdfa3ebce'
  version '2018.6.1'
  def install
    bin.install 'cloudflared'
  end
end
