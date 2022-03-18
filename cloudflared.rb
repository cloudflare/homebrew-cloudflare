class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://packages.argotunnel.com/dl/cloudflared-2022.3.3-darwin-amd64.tgz'
  sha256 '01e880aa753acc129bead70db38c53be5243e6fbcc9bf66c5b60f550d8f627eb'
  version '2022.3.3'
  def install
    bin.install 'cloudflared'
  end
end
