class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://packages.argotunnel.com/dl/cloudflared-2023.5.1-darwin-amd64.tgz'
  sha256 '6f1948133bbd4e827b0e279ec63124231c65677896dec27c6291ea3995ecea0a'
  version '2023.5.1'
  def install
    bin.install 'cloudflared'
  end
end
