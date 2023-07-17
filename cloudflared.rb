class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://packages.argotunnel.com/dl/cloudflared-2023.7.1-darwin-amd64.tgz'
  sha256 'd843e1c06b2463d42110bd003a422f6366ab160e28dd63021c676c73220a909a'
  version '2023.7.1'
  def install
    bin.install 'cloudflared'
  end
end
