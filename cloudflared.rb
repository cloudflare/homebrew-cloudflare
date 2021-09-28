class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2021.9.2-darwin-amd64.tgz'
  sha256 '5a3487f009c3dee19c998a90302bac068125f82817d1a2ef8f5f8d55c03277f2'
  version '2021.9.2'
  def install
    bin.install 'cloudflared'
  end
end
