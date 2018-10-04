class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2018.10.0-darwin-amd64.tgz'
  sha256 '92829c402c937f616e3748046b01a3777a40090119e1fbf6333126c847496eb4'
  version '2018.10.0'
  def install
    bin.install 'cloudflared'
  end
end
