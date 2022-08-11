class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://packages.argotunnel.com/dl/cloudflared-2022.8.0-darwin-amd64.tgz'
  sha256 '0b3152dea389075599e0b6505e935992b9fef13eebe0c436ec448f6f83659e15'
  version '2022.8.0'
  def install
    bin.install 'cloudflared'
  end
end
