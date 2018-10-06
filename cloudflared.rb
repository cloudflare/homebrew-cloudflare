class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2018.10.2-darwin-amd64.tgz'
  sha256 '5cdc7159428f221225fb2f5663ec56a16b263e9943a56b7753e843fce075cb33'
  version '2018.10.2'
  def install
    bin.install 'cloudflared'
  end
end
