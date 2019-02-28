class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2019.2.1-darwin-amd64.tgz'
  sha256 '89322260d47144c2fc38e925058a9d5201b990c30badacd9a15dfccf1ed698e3'
  version '2019.2.1'
  def install
    bin.install 'cloudflared'
  end
end
