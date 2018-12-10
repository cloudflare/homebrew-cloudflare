class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2018.12.0-darwin-amd64.tgz'
  sha256 'ae5de02b66c01672d3d7d207e70d0c10e6ddfb122c4300cd15473b05f47d02bf'
  version '2018.12.0'
  def install
    bin.install 'cloudflared'
  end
end
