class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2021.2.3-darwin-amd64.tgz'
  sha256 '8c8710debf0899b5f3e59fda68a21c427a3e8b0a108e97d3a2494bc7d3a6682c'
  version '2021.2.3'
  def install
    bin.install 'cloudflared'
  end
end
