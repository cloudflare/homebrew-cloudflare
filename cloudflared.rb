class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2020.8.1-darwin-amd64.tgz'
  sha256 'c043d13f9d312aac6ab787528631a98ce9d8c8acd7df253099585ea14499713f'
  version '2020.8.1'
  def install
    bin.install 'cloudflared'
  end
end
