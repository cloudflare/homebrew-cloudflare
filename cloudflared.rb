class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2018.7.3-darwin-amd64.tgz'
  sha256 '5a70a5557b9d82a9e3bb03e140a828f6752040aacdbbaa03faef0d5747a872f6'
  version '2018.7.3'
  def install
    bin.install 'cloudflared'
  end
end
