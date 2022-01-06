class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://packages.argotunnel.com/dl/cloudflared-2022.1.0-darwin-amd64.tgz'
  sha256 '4acd793d52ec01f191209558c6569b1489ca6184757f298ede8880f1b226e3ca'
  version '2022.1.0'
  def install
    bin.install 'cloudflared'
  end
end
