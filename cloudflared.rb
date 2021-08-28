class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2021.8.7-darwin-amd64.tgz'
  sha256 'd28d215620147590e128745c1e11044c09172ad36fdbec2eb9a61f80bc189c3b'
  version '2021.8.7'
  def install
    bin.install 'cloudflared'
  end
end
