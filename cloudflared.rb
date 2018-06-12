class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2018.6.1-darwin-amd64.tgz'
  sha256 '11eff499102ffb5deb4fe805a137b8f3c4930d5d6d315ffd73cc120be1d28c4d'
  version '2018.6.1'
  def install
    bin.install 'cloudflared'
  end
end
