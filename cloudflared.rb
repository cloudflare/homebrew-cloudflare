class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2020.6.3-darwin-amd64.tgz'
  sha256 '25523e15f118ec53766404bfff831787e4096e4f1e54905c6fa4d114ce54741f'
  version '2020.6.3'
  def install
    bin.install 'cloudflared'
  end
end
