class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2018.11.0-darwin-amd64.tgz'
  sha256 'c7d0f9d6148ec1ffcf46ecf0956519c968e48ce5efdaab273ec7b1b31a06a7cb'
  version '2018.11.0'
  def install
    bin.install 'cloudflared'
  end
end
