class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2021.7.0-darwin-amd64.tgz'
  sha256 'fd064fdeac841c962f8fd5ff646d39bc019d42efa4b6aa0408c1f9859ae81f2f'
  version '2021.7.0'
  def install
    bin.install 'cloudflared'
  end
end
