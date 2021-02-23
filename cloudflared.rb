class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2021.2.5-darwin-amd64.tgz'
  sha256 '81c5c3645f21b62a6af3ea4c1c0d092bc1f2169fdae8c09ba6d36321daee6e4f'
  version '2021.2.5'
  def install
    bin.install 'cloudflared'
  end
end
