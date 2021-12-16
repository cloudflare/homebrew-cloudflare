class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://packages.argotunnel.com/dl/cloudflared-2021.12.1-darwin-amd64.tgz'
  sha256 '0fa0565ff08a8c412f72d540f938c9f277a2bc486a41e318e535c5a4dc43d33f'
  version '2021.12.1'
  def install
    bin.install 'cloudflared'
  end
end
