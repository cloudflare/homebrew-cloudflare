class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2019.11.3-darwin-amd64.tgz'
  sha256 'fa292238831483302df6dbb39337eccab7f81e6cf015a55a7b492eeb17e172b5'
  version '2019.11.3'
  def install
    bin.install 'cloudflared'
  end
end
