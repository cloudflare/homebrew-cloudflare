class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://packages.argotunnel.com/dl/cloudflared-2022.10.2-darwin-amd64.tgz'
  sha256 '0f1de9e2b9a4b5fb9cf8d59e626732d9ccd7e82d1cd5873667d3ecea821fb902'
  version '2022.10.2'
  def install
    bin.install 'cloudflared'
  end
end
