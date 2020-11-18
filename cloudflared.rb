class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2020.11.8-darwin-amd64.tgz'
  sha256 'f63423742141b3a98435038fa356c54f98ce9cf24be2087aee0cdc6f4ab6e3f0'
  version '2020.11.8'
  def install
    bin.install 'cloudflared'
  end
end
