class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://packages.argotunnel.com/dl/cloudflared-2022.12.1-darwin-amd64.tgz'
  sha256 '44e99e19bcce9c95f5746d0307013a1152c0ed1b5cc9d12feace2e822e83add1'
  version '2022.12.1'
  def install
    bin.install 'cloudflared'
  end
end
