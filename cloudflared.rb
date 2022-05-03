class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://packages.argotunnel.com/dl/cloudflared-2022.5.0-darwin-amd64.tgz'
  sha256 'd01e96ea7b8b4508a17013acb368eaf99d3bcea05416c73e7e7cf9c903ab0529'
  version '2022.5.0'
  def install
    bin.install 'cloudflared'
  end
end
