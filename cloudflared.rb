class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2020.11.6-darwin-amd64.tgz'
  sha256 '8cef07126c76282ebd034829e0952a46ed5e12759a3d315de73b010da618c666'
  version '2020.11.6'
  def install
    bin.install 'cloudflared'
  end
end
