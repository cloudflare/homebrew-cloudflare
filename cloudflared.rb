class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2019.10.4-darwin-amd64.tgz'
  sha256 '6e18796ea4e33080ef5e5bd9ad58fa5e37e0645f4f360660847053640de71b5a'
  version '2019.10.4'
  def install
    bin.install 'cloudflared'
  end
end
