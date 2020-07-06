class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2020.7.1-darwin-amd64.tgz'
  sha256 '411bb3386746ed720d6e15fcfab741cc9426829bc0baf0f72c700c7555c9aab0'
  version '2020.7.1'
  def install
    bin.install 'cloudflared'
  end
end
