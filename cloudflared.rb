class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2019.5.0-darwin-amd64.tgz'
  sha256 '00f88fc9ecebdc219f6640f69c8b5d8610ed96caadf4482ef929caf5c92fc24d'
  version '2019.5.0'
  def install
    bin.install 'cloudflared'
  end
end
