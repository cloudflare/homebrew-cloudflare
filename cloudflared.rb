class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2018.8.0-darwin-amd64.tgz'
  sha256 '0435326bbfd87c02d55c5432f932b0c555b96e66163364df5cc79b1ced505745'
  version '2018.8.0'
  def install
    bin.install 'cloudflared'
  end
end
