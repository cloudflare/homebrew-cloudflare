class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2018.6.2-darwin-amd64.tgz'
  sha256 '4ed265005e37b149f71bbe3597f21cb5a364c2470f0ccc5bc2352e825749ec32'
  version '2018.6.2'
  def install
    bin.install 'cloudflared'
  end
end
