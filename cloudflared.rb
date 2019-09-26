class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2019.9.2-darwin-amd64.tgz'
  sha256 '7605b1b2168cc0c63ed6950dbe3a22a29bff3731de602d263a929573856ff8f6'
  version '2019.9.2'
  def install
    bin.install 'cloudflared'
  end
end
