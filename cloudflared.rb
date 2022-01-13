class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://packages.argotunnel.com/dl/cloudflared-2022.1.2-darwin-amd64.tgz'
  sha256 'd8c100c092a27279822567684345a3a6ab3ae15a1f913da4216c1fb03e89f1fa'
  version '2022.1.2'
  def install
    bin.install 'cloudflared'
  end
end
