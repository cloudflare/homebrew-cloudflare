class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2020.10.0-darwin-amd64.tgz'
  sha256 '252694eba418a103ba9b1f04e5d40f142ac9e5d1f48848cfa2d6a78cf7e397de'
  version '2020.10.0'
  def install
    bin.install 'cloudflared'
  end
end
