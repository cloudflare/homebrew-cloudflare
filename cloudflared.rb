class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2018.10.5-darwin-amd64.tgz'
  sha256 '605fdc4de53b45c202d76f9fed5358a4777a793575def5ac326203eb5931b3d9'
  version '2018.10.5'
  def install
    bin.install 'cloudflared'
  end
end
