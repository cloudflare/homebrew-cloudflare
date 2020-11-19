class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2020.11.9-darwin-amd64.tgz'
  sha256 '5810d01bb6b1cf98035fe44fa8663ab0e724fcd4849058530b659956230059e9'
  version '2020.11.9'
  def install
    bin.install 'cloudflared'
  end
end
