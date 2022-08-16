class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://packages.argotunnel.com/dl/cloudflared-2022.8.1-darwin-amd64.tgz'
  sha256 '56ffd070df3a7388274f48a5656dc41d555bed0a71364c8ae304b4ef1708eea8'
  version '2022.8.1'
  def install
    bin.install 'cloudflared'
  end
end
