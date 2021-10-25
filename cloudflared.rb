class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://packages.argotunnel.com/dl/cloudflared-2021.10.4-darwin-amd64.tgz'
  sha256 '4370faf76a5236667b8b8e9fe5781eb4f6cd90bf7d029ad502366664521902e5'
  version '2021.10.4'
  def install
    bin.install 'cloudflared'
  end
end
