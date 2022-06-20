class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://packages.argotunnel.com/dl/cloudflared-2022.6.3-darwin-amd64.tgz'
  sha256 '65e4ed52c0adf0742feb9235f746c0dfbe3696d1406a802bd62444038dbe0cd6'
  version '2022.6.3'
  def install
    bin.install 'cloudflared'
  end
end
