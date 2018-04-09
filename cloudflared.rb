class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2018.4.5-darwin-amd64.tgz'
  sha256 'cd5b24796b81fe8e4357d2b5060e8e16d9e423b25c65dc9bc075e589bade1b84'
  version '2018.4.5'
  def install
    bin.install 'cloudflared'
  end
end
