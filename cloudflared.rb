class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2019.4.1-darwin-amd64.tgz'
  sha256 '617520025de798fa1fcca88011a5f12ab29d12eaf573b3659618e3474ed10a14'
  version '2019.4.1'
  def install
    bin.install 'cloudflared'
  end
end
