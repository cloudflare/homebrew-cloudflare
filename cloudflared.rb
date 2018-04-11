class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2018.4.6-darwin-amd64.tgz'
  sha256 'ba45e613e40a7948b8e8cdeb29e51d84f1e282b47de1e9180d468f62badd6e51'
  version '2018.4.6'
  def install
    bin.install 'cloudflared'
  end
end
