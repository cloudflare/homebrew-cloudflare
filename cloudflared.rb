class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2021.2.0-darwin-amd64.tgz'
  sha256 '478945db6b65a771949416d8c3ea3684d656b73e1659b783b349aba68c2487fe'
  version '2021.2.0'
  def install
    bin.install 'cloudflared'
  end
end
