class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2018.8.0-darwin-amd64.tgz'
  sha256 ''
  version '2018.8.0'
  def install
    bin.install 'cloudflared'
  end
end
