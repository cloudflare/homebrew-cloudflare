class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2020.9.3-darwin-amd64.tgz'
  sha256 '3a5b42a7b2e2fa43ff07c6383440d6bcd84d375833d53cf533ba78fee3a60996'
  version '2020.9.3'
  def install
    bin.install 'cloudflared'
  end
end
