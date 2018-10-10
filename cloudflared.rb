class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2018.10.3-darwin-amd64.tgz'
  sha256 '2f9bb6372a34910796bfe09ebd1050b5469d9fd5a05689abf471ea28aa57afb7'
  version '2018.10.3'
  def install
    bin.install 'cloudflared'
  end
end
