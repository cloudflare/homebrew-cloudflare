class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2019.2.0-darwin-amd64.tgz'
  sha256 '0090a786de8397bc86fb1175b8980c6e26ac9041ef5659331ea4c0133f8c41ea'
  version '2019.2.0'
  def install
    bin.install 'cloudflared'
  end
end
