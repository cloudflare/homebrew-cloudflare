class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://packages.argotunnel.com/dl/cloudflared-2021.10.1-darwin-amd64.tgz'
  sha256 '41b84a54138cfa68143a13cc1e452fa4334ae1d38d14a5c367d99c7a7c485a44'
  version '2021.10.1'
  def install
    bin.install 'cloudflared'
  end
end
