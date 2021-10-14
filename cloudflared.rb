class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://packages.argotunnel.com/dl/cloudflared-2021.10.2-darwin-amd64.tgz'
  sha256 '9b38356325a069cdd4aff533e4399aa52dcfe6fc3be3a73c7d8f59f2f7251e01'
  version '2021.10.2'
  def install
    bin.install 'cloudflared'
  end
end
