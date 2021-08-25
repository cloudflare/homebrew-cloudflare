class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2021.8.3-darwin-amd64.tgz'
  sha256 'c42c7e0795fbf17b422bc36bc26ad2c399d3d99edbd52b3203faf3ab052ab3db'
  version '2021.8.3'
  def install
    bin.install 'cloudflared'
  end
end
