class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2021.7.3-darwin-amd64.tgz'
  sha256 'fae761bea1c4724a11941d52ea852e2469cf455f88a9d49c5eaf88d94ec5e05e'
  version '2021.7.3'
  def install
    bin.install 'cloudflared'
  end
end
