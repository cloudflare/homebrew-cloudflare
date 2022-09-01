class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://packages.argotunnel.com/dl/cloudflared-2022.8.4-darwin-amd64.tgz'
  sha256 '177f34291dc2d89d554a31f65e98fc4d96fc552b2060ceb9b2b6159b2efb58bd'
  version '2022.8.4'
  def install
    bin.install 'cloudflared'
  end
end
