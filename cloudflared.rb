class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2021.5.6-darwin-amd64.tgz'
  sha256 '63afb8fc9f1c8e27472eb3b73ffc58fb379404ca7724ac4f48355a63c11bcd12'
  version '2021.5.6'
  def install
    bin.install 'cloudflared'
  end
end
