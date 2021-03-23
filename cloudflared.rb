class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2021.3.2-darwin-amd64.tgz'
  sha256 '344669bd98479636c7be4fb3b8774b34db938259b842eb28bce2e7624ce68a25'
  version '2021.3.2'
  def install
    bin.install 'cloudflared'
  end
end
