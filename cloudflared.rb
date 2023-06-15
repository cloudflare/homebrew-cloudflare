class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://packages.argotunnel.com/dl/cloudflared-2023.6.0-darwin-amd64.tgz'
  sha256 'fbc21a5d0738377dab1dc1b71e7db8f8641751411786356abe2e9778e8353069'
  version '2023.6.0'
  def install
    bin.install 'cloudflared'
  end
end
