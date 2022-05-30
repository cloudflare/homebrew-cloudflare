class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://packages.argotunnel.com/dl/cloudflared-2022.5.3-darwin-amd64.tgz'
  sha256 '440dc5f0f4922a7346617b24a456c485c4c4cc97baf91756140947756a0df136'
  version '2022.5.3'
  def install
    bin.install 'cloudflared'
  end
end
