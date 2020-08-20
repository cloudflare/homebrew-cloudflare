class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2020.8.2-darwin-amd64.tgz'
  sha256 '0bc61f7cb7049d266a644b6a74f3d49e702479f3c4db3dd5f8c1918bae91afb5'
  version '2020.8.2'
  def install
    bin.install 'cloudflared'
  end
end
