class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2019.8.4-darwin-amd64.tgz'
  sha256 '153bbd9bcc0f8024da600a5c6ba5ede4158dd9b80917f487c7a3e75d2f90aa54'
  version '2019.8.4'
  def install
    bin.install 'cloudflared'
  end
end
