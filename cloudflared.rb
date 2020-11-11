class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2020.11.3-darwin-amd64.tgz'
  sha256 '5d9babd22a87f4e1f98bedf91d0d6e268c2d8b346d6d73c034801744be12037e'
  version '2020.11.3'
  def install
    bin.install 'cloudflared'
  end
end
