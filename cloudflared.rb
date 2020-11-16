class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2020.11.7-darwin-amd64.tgz'
  sha256 '13fa217c05355d609763d017d20117a294271e11fa33fb0997d3cec23110307f'
  version '2020.11.7'
  def install
    bin.install 'cloudflared'
  end
end
