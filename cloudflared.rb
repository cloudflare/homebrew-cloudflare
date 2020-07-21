class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2020.7.4-darwin-amd64.tgz'
  sha256 'c665b90da993a299b51e9b9dc0072b757ee584036524872f2b3262723b7668c1'
  version '2020.7.4'
  def install
    bin.install 'cloudflared'
  end
end
