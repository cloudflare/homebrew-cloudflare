class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://packages.argotunnel.com/dl/cloudflared-2022.10.1-darwin-amd64.tgz'
  sha256 '00d5f91520930d22656c4ea16dc410086efc328f21a8be442df7cb1abe745c60'
  version '2022.10.1'
  def install
    bin.install 'cloudflared'
  end
end
