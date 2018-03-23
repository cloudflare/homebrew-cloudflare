class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2018.3.7-darwin-amd64.tgz'
  sha256 '8faed7c26ceea3790dc6ec9c0d5a14350c618b78ce72316ce30e2983932608d8'
  version '2018.3.7'
  def install
    bin.install 'cloudflared'
  end
end
