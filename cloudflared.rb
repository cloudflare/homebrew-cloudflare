class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2020.8.0-darwin-amd64.tgz'
  sha256 '9b483a68d605c36c196b2164d609d63d0d5e87b63bcbea13493172d1b58ca9ac'
  version '2020.8.0'
  def install
    bin.install 'cloudflared'
  end
end
