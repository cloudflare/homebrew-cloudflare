class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://packages.argotunnel.com/dl/cloudflared-2022.6.1-darwin-amd64.tgz'
  sha256 '7636c98603fdf1ea8315de493acaebbaf250f402a8b3663d5e8beb8ab2dd0b03'
  version '2022.6.1'
  def install
    bin.install 'cloudflared'
  end
end
