class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2018.4.1-darwin-amd64.tgz'
  sha256 'fc3e450742eafc5b6e4904f6d87cdd264b4fcf7861c983665259ef72c429ee3c'
  version '2018.4.1'
  def install
    bin.install 'cloudflared'
  end
end
