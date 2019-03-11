class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2019.3.0-darwin-amd64.tgz'
  sha256 '838e194c398f096ca446f1e95f83e5e6cc89ae083a270107e0cfdf796c4dedbf'
  version '2019.3.0'
  def install
    bin.install 'cloudflared'
  end
end
