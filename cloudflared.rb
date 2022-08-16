class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://packages.argotunnel.com/dl/cloudflared-2022.8.2-darwin-amd64.tgz'
  sha256 '6a850bc257ef06ebf8e322742b2a77c64b0ab9a948bcaa51684fd1d109d5beca'
  version '2022.8.2'
  def install
    bin.install 'cloudflared'
  end
end
