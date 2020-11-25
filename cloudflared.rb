class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2020.11.11-darwin-amd64.tgz'
  sha256 '6e769b697bb7da607b95ebc67ef2a193ab76acf12d8c93a3ba3bc681cc4b5a7d'
  version '2020.11.11'
  def install
    bin.install 'cloudflared'
  end
end
