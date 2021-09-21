class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2021.9.1-darwin-amd64.tgz'
  sha256 '47dd25498ff23aeaa91c767595d8be7975b2747dbcc50e9ca142789073160d81'
  version '2021.9.1'
  def install
    bin.install 'cloudflared'
  end
end
