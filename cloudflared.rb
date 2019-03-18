class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2019.3.1-darwin-amd64.tgz'
  sha256 'f4fd67e1e2fc106ce3034bac27e4946eb7e412471e37e08481a1baf4008b25bf'
  version '2019.3.1'
  def install
    bin.install 'cloudflared'
  end
end
