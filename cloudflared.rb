class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2021.4.0-darwin-amd64.tgz'
  sha256 '59a36854b525039c24fe5ee3a802aebde1c95a08a16e61f9a96ace4b8783b52e'
  version '2021.4.0'
  def install
    bin.install 'cloudflared'
  end
end
