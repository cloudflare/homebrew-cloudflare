class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2021.1.0-darwin-amd64.tgz'
  sha256 'c40d5a0eba5bdf41e03b14ca26075c4a15da2ce632be4a638c8862a9400f93b1'
  version '2021.1.0'
  def install
    bin.install 'cloudflared'
  end
end
