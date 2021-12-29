class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://packages.argotunnel.com/dl/cloudflared-2021.12.4-darwin-amd64.tgz'
  sha256 'bd03a7eeeea2e2dccb947c4ce53c4e876c6a47b9c99f0703c4f7683eeeb7ca4c'
  version '2021.12.4'
  def install
    bin.install 'cloudflared'
  end
end
