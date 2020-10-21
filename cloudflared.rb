class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2020.10.1-darwin-amd64.tgz'
  sha256 'd5e1d49d601acbb8b3f56d083d1b22429d66f8fbf41018a5e6a3d1e2b273da05'
  version '2020.10.1'
  def install
    bin.install 'cloudflared'
  end
end
