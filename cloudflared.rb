class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2021.8.5-darwin-amd64.tgz'
  sha256 '15fba6a031ae2679c3b854461cc63100c9f29306e9e17a46592073e4cf153b29'
  version '2021.8.5'
  def install
    bin.install 'cloudflared'
  end
end
