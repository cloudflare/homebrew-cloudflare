class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2021.7.4-darwin-amd64.tgz'
  sha256 '83a7637f7dc8b70c181dbbb1eb17c75dbffcead1221c15a079ebc2cf45b0a9cd'
  version '2021.7.4'
  def install
    bin.install 'cloudflared'
  end
end
