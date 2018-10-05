class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2018.10.1-darwin-amd64.tgz'
  sha256 '2feede3f696a1517c698c5290dc8a2dc4572dc08be74e59fd1e90c37564528e9'
  version '2018.10.1'
  def install
    bin.install 'cloudflared'
  end
end
