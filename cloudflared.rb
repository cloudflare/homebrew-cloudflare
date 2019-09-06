class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2019.9.0-darwin-amd64.tgz'
  sha256 '650c92605e381c468225577150a96481977061d200fe92243e9df8adcba702ab'
  version '2019.9.0'
  def install
    bin.install 'cloudflared'
  end
end
