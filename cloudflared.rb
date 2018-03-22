class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2018.3.2-darwin-amd64.tgz'
  sha256 'e7361bf1232d6b4ebe4efc291aa7a59ae6e8f0248ec8b750e530f2e622f5d91d'
  version '2018.3.2'
  def install
    bin.install 'cloudflared'
  end
end
