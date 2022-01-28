class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://packages.argotunnel.com/dl/cloudflared-2022.1.3-darwin-amd64.tgz'
  sha256 '1b2fb268fd981796f61ceaeb7a45e2a6e3187e011ccb6e748180ff011c8d3f0b'
  version '2022.1.3'
  def install
    bin.install 'cloudflared'
  end
end
