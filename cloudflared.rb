class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://packages.argotunnel.com/dl/cloudflared-2022.4.0-darwin-amd64.tgz'
  sha256 '15e94aeacb932fc0ba9d8f557d1b74f8b744f2438c13bd3c9d9dccac5a9425ef'
  version '2022.4.0'
  def install
    bin.install 'cloudflared'
  end
end
