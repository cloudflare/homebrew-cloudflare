class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://packages.argotunnel.com/dl/cloudflared-2022.3.4-darwin-amd64.tgz'
  sha256 '2e54aa4b6c105aded33e76f74c1a1d2432efd63424d41f96a6f5ee515d253feb'
  version '2022.3.4'
  def install
    bin.install 'cloudflared'
  end
end
