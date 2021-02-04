class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2021.2.1-darwin-amd64.tgz'
  sha256 'e1567dd4101cd9308ac4871201393559ad2dfae4fe2dbf2e1fa7599b89d7ede9'
  version '2021.2.1'
  def install
    bin.install 'cloudflared'
  end
end
