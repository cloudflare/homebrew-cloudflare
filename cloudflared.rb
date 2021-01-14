class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2021.1.4-darwin-amd64.tgz'
  sha256 '1a607873df0329ab157a42ddbb263bd6471a645c4e28339e1628d916845d89de'
  version '2021.1.4'
  def install
    bin.install 'cloudflared'
  end
end
