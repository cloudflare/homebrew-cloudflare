class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2020.7.3-darwin-amd64.tgz'
  sha256 '67a8ce8541a990131d69c439aeb81fe985eaa2f8b72715c17c452400f2c8740e'
  version '2020.7.3'
  def install
    bin.install 'cloudflared'
  end
end
