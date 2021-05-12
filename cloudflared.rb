class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2021.5.1-darwin-amd64.tgz'
  sha256 'b92037e65c8d4d214fdceeb65af5f5ea870eec2fb906e85cf492ed49f8aa1612'
  version '2021.5.1'
  def install
    bin.install 'cloudflared'
  end
end
