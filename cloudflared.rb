class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://github.com/cloudflare/cloudflared/releases/download/2023.6.1/cloudflared-darwin-amd64.tgz'
  sha256 'b2e8c01727bb7b1b8b974cf43651bee7e6c7e35470f0aea4fa67df0c0fcdaec8'
  version '2023.6.1'
  def install
    bin.install 'cloudflared'
  end
end
