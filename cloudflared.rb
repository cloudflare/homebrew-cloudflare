class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://packages.argotunnel.com/dl/cloudflared-2022.9.0-darwin-amd64.tgz'
  sha256 '2279658cd2343a3296020ecf4529f12463fcac1d99b2a13b67bd32875059ff67'
  version '2022.9.0'
  def install
    bin.install 'cloudflared'
  end
end
