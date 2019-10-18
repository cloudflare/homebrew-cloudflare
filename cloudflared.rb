class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2019.10.2-darwin-amd64.tgz'
  sha256 '24f0eb410be0955d4e7717025d8976f1fb3885023d5507ab972b6d10e09587cf'
  version '2019.10.2'
  def install
    bin.install 'cloudflared'
  end
end
