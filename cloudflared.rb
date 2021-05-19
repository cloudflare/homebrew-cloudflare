class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2021.5.8-darwin-amd64.tgz'
  sha256 '4247c48071d8ac07892d97c2a5b808afe6527341fdcc5f1d209842feed92b4ea'
  version '2021.5.8'
  def install
    bin.install 'cloudflared'
  end
end
