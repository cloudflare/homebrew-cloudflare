class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2021.5.4-darwin-amd64.tgz'
  sha256 '572829edd86aff6e97f57845b2ea3b578e03758cd7d13c804a9305c3b5d231d8'
  version '2021.5.4'
  def install
    bin.install 'cloudflared'
  end
end
