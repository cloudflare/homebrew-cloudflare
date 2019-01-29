class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2019.1.0-darwin-amd64.tgz'
  sha256 '95690e4d3699a0f8cc31d7ce34deb7692701f70e815fc3ee8bca92a31ebfd96d'
  version '2019.1.0'
  def install
    bin.install 'cloudflared'
  end
end
