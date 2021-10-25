class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://packages.argotunnel.com/dl/cloudflared-2021.10.5-darwin-amd64.tgz'
  sha256 'e3ff01cafda342815e071f1b6ae5aaad12633aa802bc16f5379982ac3c56d640'
  version '2021.10.5'
  def install
    bin.install 'cloudflared'
  end
end
