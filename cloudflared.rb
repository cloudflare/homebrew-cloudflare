class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2019.11.2-darwin-amd64.tgz'
  sha256 '711461e9b29becf63a53d684e080d298cfcdc6b30dcde6b200046e48a745640a'
  version '2019.11.2'
  def install
    bin.install 'cloudflared'
  end
end
