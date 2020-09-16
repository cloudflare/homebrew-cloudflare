class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2020.9.1-darwin-amd64.tgz'
  sha256 'fd95116896f1a1294de7ec7790875f02738dfb2818a11d6e10c32ed50b835d37'
  version '2020.9.1'
  def install
    bin.install 'cloudflared'
  end
end
