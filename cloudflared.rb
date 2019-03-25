class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2019.3.2-darwin-amd64.tgz'
  sha256 'eedea11f1cbe8d89df31b579efce440f4acdf2d1efbf23f1ada80bf5e122c561'
  version '2019.3.2'
  def install
    bin.install 'cloudflared'
  end
end
