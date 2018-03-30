class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2018.3.11-darwin-amd64.tgz'
  sha256 'd6bd2391115dbbbf510e75169555e8db3d9e90780301eb38cf27718276f6a1e1'
  version '2018.3.11'
  def install
    bin.install 'cloudflared'
  end
end
