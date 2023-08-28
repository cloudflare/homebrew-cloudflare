class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://packages.argotunnel.com/dl/cloudflared-2023.8.1-darwin-amd64.tgz'
  sha256 'c66e9d0d54d29d220b1399a3e6ebe2a23ee76de113de15f551530d2cb9fd3321'
  version '2023.8.1'
  def install
    bin.install 'cloudflared'
  end
end
