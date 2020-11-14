class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2020.11.5-darwin-amd64.tgz'
  sha256 'bc9b36d8eae79bf6c9916470f1002e7e7da4891d250ea3c1309f77a05855e6fc'
  version '2020.11.5'
  def install
    bin.install 'cloudflared'
  end
end
