class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://packages.argotunnel.com/dl/cloudflared-2022.5.1-darwin-amd64.tgz'
  sha256 'ae57b0874637af8f334a426b53f7f17e7d8a68fe7a1a75314bf3fc2ecdd0e324'
  version '2022.5.1'
  def install
    bin.install 'cloudflared'
  end
end
