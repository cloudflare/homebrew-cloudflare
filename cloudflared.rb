class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2021.8.0-darwin-amd64.tgz'
  sha256 'ac893f11079ca576b6ea795801118e95413d27a0c8f8a6d79d15dd12c760d177'
  version '2021.8.0'
  def install
    bin.install 'cloudflared'
  end
end
