class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2018.12.1-darwin-amd64.tgz'
  sha256 '10b3ad863227fcb3be81326c0f3f452659bcf04ddfcfb871fa2cdb611c423434'
  version '2018.12.1'
  def install
    bin.install 'cloudflared'
  end
end
