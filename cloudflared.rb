class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://packages.argotunnel.com/dl/cloudflared-2023.7.3-darwin-amd64.tgz'
  sha256 'bfefe6d8af31c3597f580a798421b02dc3331d4dfbffa8903f6360f5fbf860be'
  version '2023.7.3'
  def install
    bin.install 'cloudflared'
  end
end
