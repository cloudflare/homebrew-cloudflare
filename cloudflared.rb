class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2020.7.2-darwin-amd64.tgz'
  sha256 'd5111055e8cda701818e93ac29be1eb7ab2813816b0d985550fd4131f7a7dbc3'
  version '2020.7.2'
  def install
    bin.install 'cloudflared'
  end
end
