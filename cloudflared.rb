class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2021.2.2-darwin-amd64.tgz'
  sha256 '396b0b13344045cfab720ca95a8a0baa35be616bea0db76979eaa4f687aa1a26'
  version '2021.2.2'
  def install
    bin.install 'cloudflared'
  end
end
