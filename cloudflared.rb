class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2021.8.1-darwin-amd64.tgz'
  sha256 'e0a198e64bd353debfa71fa3586829046db404a847ff2a430e5e2e034adb996c'
  version '2021.8.1'
  def install
    bin.install 'cloudflared'
  end
end
