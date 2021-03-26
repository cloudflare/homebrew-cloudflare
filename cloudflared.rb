class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2021.3.5-darwin-amd64.tgz'
  sha256 '2e40705223f85ae2255b09bfbf93608a330934dff49daf5da684c1795cd99fa5'
  version '2021.3.5'
  def install
    bin.install 'cloudflared'
  end
end
