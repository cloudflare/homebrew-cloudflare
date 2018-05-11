class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2018.5.3-darwin-amd64.tgz'
  sha256 'b85adf96976010790bceb74feace8d272edb363d54c196e9044528361035bcc5'
  version '2018.5.3'
  def install
    bin.install 'cloudflared'
  end
end
