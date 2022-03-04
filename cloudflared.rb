class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://packages.argotunnel.com/dl/cloudflared-2022.3.0-darwin-amd64.tgz'
  sha256 'c569b58372619690912085702d87723816464a94396993d30a72262e9b811052'
  version '2022.3.0'
  def install
    bin.install 'cloudflared'
  end
end
