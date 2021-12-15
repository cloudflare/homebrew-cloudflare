class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://packages.argotunnel.com/dl/cloudflared-2021.12.0-darwin-amd64.tgz'
  sha256 'de88c7add794446740e43f442417eb33935c2b11ce0a8072c5cdc36b972720d4'
  version '2021.12.0'
  def install
    bin.install 'cloudflared'
  end
end
