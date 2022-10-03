class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://packages.argotunnel.com/dl/cloudflared-2022.10.0-darwin-amd64.tgz'
  sha256 '7a9138f19070f03e7b958cfaebc5df157fee3cb6a74acc2036d54ca5354e3ba3'
  version '2022.10.0'
  def install
    bin.install 'cloudflared'
  end
end
