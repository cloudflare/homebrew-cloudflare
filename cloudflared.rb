class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2021.5.10-darwin-amd64.tgz'
  sha256 '9683d8c114f8c134bda82862cc4b80bb428c86cc6a5cbae9d4d2c62b21cbea70'
  version '2021.5.10'
  def install
    bin.install 'cloudflared'
  end
end
