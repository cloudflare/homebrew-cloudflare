class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://packages.argotunnel.com/dl/cloudflared-2023.5.0-darwin-amd64.tgz'
  sha256 'c9c6f9249ced06443b4dfdcd465538573290f65684c9ab3cb5c614f64dc4c2d3'
  version '2023.5.0'
  def install
    bin.install 'cloudflared'
  end
end
