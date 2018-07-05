class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2018.7.0-darwin-amd64.tgz'
  sha256 '30806bca5fcb838f095b0f5238072e76d58b57e6372e915f7067829861a76c1c'
  version '2018.7.0'
  def install
    bin.install 'cloudflared'
  end
end
