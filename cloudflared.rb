class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2021.1.2-darwin-amd64.tgz'
  sha256 '61a199d7d2bda102b2be657080ebe37e8031d25b9b5bed3ea921a339ab293f0d'
  version '2021.1.2'
  def install
    bin.install 'cloudflared'
  end
end
