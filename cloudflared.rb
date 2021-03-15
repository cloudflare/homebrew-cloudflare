class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2021.3.1-darwin-amd64.tgz'
  sha256 '761bd3a5d984227d6748f111ede450beeccaed497527e32998bb446cd7c81b53'
  version '2021.3.1'
  def install
    bin.install 'cloudflared'
  end
end
