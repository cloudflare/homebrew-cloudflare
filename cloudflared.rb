class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2019.12.0-darwin-amd64.tgz'
  sha256 'e48d8a4fc2564071e485dc9d97f4c2adc3cc4a0b772e3ea495ea046ed26a35a4'
  version '2019.12.0'
  def install
    bin.install 'cloudflared'
  end
end
