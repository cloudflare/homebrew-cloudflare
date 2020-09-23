class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2020.9.2-darwin-amd64.tgz'
  sha256 '04dca23b021577a83c3f8535299cb0569f94710d9cdac4ca54533f2ffeaaabb1'
  version '2020.9.2'
  def install
    bin.install 'cloudflared'
  end
end
