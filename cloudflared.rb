class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2021.6.0-darwin-amd64.tgz'
  sha256 '18e407bed0fdb828bbd334bc1a846d6819b235da280efc55a6a77fc667daee3c'
  version '2021.6.0'
  def install
    bin.install 'cloudflared'
  end
end
