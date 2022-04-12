class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://packages.argotunnel.com/dl/cloudflared-2022.4.1-darwin-amd64.tgz'
  sha256 'd0be9e8c3d57f5412ace726c05d8833b872af918a3b2a6b0630dc71d2e4ea2c6'
  version '2022.4.1'
  def install
    bin.install 'cloudflared'
  end
end
