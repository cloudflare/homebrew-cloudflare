class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2018.4.2-darwin-amd64.tgz'
  sha256 '1ac326ba6d83405767ea83e7e8afedae21d922b94c2f8295e6a64026c589d58a'
  version '2018.4.2'
  def install
    bin.install 'cloudflared'
  end
end
