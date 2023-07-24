class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://packages.argotunnel.com/dl/cloudflared-2023.7.2-darwin-amd64.tgz'
  sha256 '5c0164fd8a9644eb7d36778f1eee2b2b61fd97f01c52e30976a1cd4d2e429d11'
  version '2023.7.2'
  def install
    bin.install 'cloudflared'
  end
end
