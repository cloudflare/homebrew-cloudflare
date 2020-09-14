class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2020.9.0-darwin-amd64.tgz'
  sha256 '83985370d6ee3d02a7a92a0dd40f819f1650d4cf76990a844417246a8c3e78bb'
  version '2020.9.0'
  def install
    bin.install 'cloudflared'
  end
end
