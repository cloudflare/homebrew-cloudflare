class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2020.2.0-darwin-amd64.tgz'
  sha256 '9eb18f3d5b5e926dcbafecd35957c0709efbc10bf21d3e2523ab0392f0095643'
  version '2020.2.0'
  def install
    bin.install 'cloudflared'
  end
end
