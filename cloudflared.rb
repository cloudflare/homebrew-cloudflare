class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://packages.argotunnel.com/dl/cloudflared-2022.2.0-darwin-amd64.tgz'
  sha256 'b0407167ace015995b3bed02ecf9c9b088b7a0dde5f761bf23e79b6e99b569dd'
  version '2022.2.0'
  def install
    bin.install 'cloudflared'
  end
end
