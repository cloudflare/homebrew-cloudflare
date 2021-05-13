class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2021.5.2-darwin-amd64.tgz'
  sha256 '65a46df360fdd93722be999654eacabd2087ed368b136bcef58c3642e91e34a2'
  version '2021.5.2'
  def install
    bin.install 'cloudflared'
  end
end
