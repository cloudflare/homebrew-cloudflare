class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2021.1.5-darwin-amd64.tgz'
  sha256 'c697b5eb8d14ce67b597a9dd10a715ae864588589ddb933965e10804f5a0529e'
  version '2021.1.5'
  def install
    bin.install 'cloudflared'
  end
end
