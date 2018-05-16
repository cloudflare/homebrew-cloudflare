class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2018.5.4-darwin-amd64.tgz'
  sha256 '7d8b1dcd87625108a1fe970b12b48b6c081c3cb9ae002d868341183452708898'
  version '2018.5.4'
  def install
    bin.install 'cloudflared'
  end
end
