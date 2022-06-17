class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://packages.argotunnel.com/dl/cloudflared-2022.6.2-darwin-amd64.tgz'
  sha256 '22ea891033c0d4ed9991385beb6fcda472e7f8f18013b23c6c7b589fe5c58d37'
  version '2022.6.2'
  def install
    bin.install 'cloudflared'
  end
end
