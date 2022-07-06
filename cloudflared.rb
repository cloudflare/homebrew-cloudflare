class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://packages.argotunnel.com/dl/cloudflared-2022.7.1-darwin-amd64.tgz'
  sha256 '59e43aa6d5e97ba19a9820b2fcb5a230637b92f976b11bdeaa9d4b1282684221'
  version '2022.7.1'
  def install
    bin.install 'cloudflared'
  end
end
