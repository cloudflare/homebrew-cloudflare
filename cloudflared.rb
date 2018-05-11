class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2018.5.2-darwin-amd64.tgz'
  sha256 'e419261ccc33ec04d295314bb3028330a41d04a66e13279958091d721e85e8e2'
  version '2018.5.2'
  def install
    bin.install 'cloudflared'
  end
end
