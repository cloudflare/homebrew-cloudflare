class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2018.7.1-darwin-amd64.tgz'
  sha256 'ccee747b001f59a1ae05c16948ab768f17bd329c20b78defd89ba877f0c834ec'
  version '2018.7.1'
  def install
    bin.install 'cloudflared'
  end
end
