class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2019.11.0-darwin-amd64.tgz'
  sha256 '70b1d9298866518b5dc3c7d67210776e148442e8147f6241db2b81519afe2d4a'
  version '2019.11.0'
  def install
    bin.install 'cloudflared'
  end
end
