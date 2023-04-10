class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://packages.argotunnel.com/dl/cloudflared-2023.4.0-darwin-amd64.tgz'
  sha256 'a25b23a651a31e24950db0b29297fb05a85dc55af0e46a0c47d827590030a089'
  version '2023.4.0'
  def install
    bin.install 'cloudflared'
  end
end
