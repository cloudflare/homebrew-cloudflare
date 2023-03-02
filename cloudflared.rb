class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://github.com/cloudflare/cloudflared/releases/download/2023.3.0/cloudflared-darwin-amd64.tgz'
  sha256 '6717708983293ba49e865558580a862e79a386ccd0e60fb5955907cec7c107f1'
  version '2023.3.0'
  def install
    bin.install 'cloudflared'
  end
end
