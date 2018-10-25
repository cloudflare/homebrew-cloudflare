class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2018.10.4-darwin-amd64.tgz'
  sha256 '97c5943ff21377752238f2e19c164f992e1a4937d7fef6a438dfacafeb1b7abe'
  version '2018.10.4'
  def install
    bin.install 'cloudflared'
  end
end
