class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://packages.argotunnel.com/dl/cloudflared-2021.10.3-darwin-amd64.tgz'
  sha256 '6602f313aa845349088a051b48265e9a240c0ea00619fdaf8b3867204d1aae53'
  version '2021.10.3'
  def install
    bin.install 'cloudflared'
  end
end
