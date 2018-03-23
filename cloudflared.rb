class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2018.3.6-darwin-amd64.tgz'
  sha256 '5fe51569ca0c84ade4b5274e3b39cb743b6f2d1a617a0355ec5951501a9304fe'
  version '2018.3.6'
  def install
    bin.install 'cloudflared'
  end
end
