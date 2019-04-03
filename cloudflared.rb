class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2019.4.0-darwin-amd64.tgz'
  sha256 '134079a8805fbcfbd3ea7b120c9fd1f1357be62eba0d28a03b5d6a47e71f47cd'
  version '2019.4.0'
  def install
    bin.install 'cloudflared'
  end
end
