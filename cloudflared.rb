class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://packages.argotunnel.com/dl/cloudflared-2022.3.1-darwin-amd64.tgz'
  sha256 '1669a8d26668737264b18b7addfa62ed4b7ee517f36c05ab264cf1dda8dd9ef5'
  version '2022.3.1'
  def install
    bin.install 'cloudflared'
  end
end
