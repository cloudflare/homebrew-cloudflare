class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2021.5.9-darwin-amd64.tgz'
  sha256 'f41c3d6afcbbe1e11043936aea19a0d792a77cef8cab47db7f52ff67f8f88890'
  version '2021.5.9'
  def install
    bin.install 'cloudflared'
  end
end
