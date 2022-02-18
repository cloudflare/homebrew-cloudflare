class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://packages.argotunnel.com/dl/cloudflared-2022.2.1-darwin-amd64.tgz'
  sha256 '894ef51bd108fadc282fce8667df2a49baba7fcae282cfbb502bdfb44ff9d2b5'
  version '2022.2.1'
  def install
    bin.install 'cloudflared'
  end
end
