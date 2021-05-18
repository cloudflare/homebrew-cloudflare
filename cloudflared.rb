class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2021.5.7-darwin-amd64.tgz'
  sha256 'e4d027ee4fa07b5688cdffe0bdd0736a36962fa0d122b698343327b0ed0dc016'
  version '2021.5.7'
  def install
    bin.install 'cloudflared'
  end
end
