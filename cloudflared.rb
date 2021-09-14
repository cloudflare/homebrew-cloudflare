class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2021.9.0-darwin-amd64.tgz'
  sha256 '19f2a27f4be2aecb2ed57ff826a80d7ff619146d06479b08e43a950f2de7b442'
  version '2021.9.0'
  def install
    bin.install 'cloudflared'
  end
end
