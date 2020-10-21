class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2020.10.1-darwin-amd64.tgz'
  sha256 'c10a00f9fafd55524bb4955f16da0fc3d742b265ad467499d107ee31586eac50'
  version '2020.10.1'
  def install
    bin.install 'cloudflared'
  end
end
