class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://packages.argotunnel.com/dl/cloudflared-2022.10.3-darwin-amd64.tgz'
  sha256 '6bf2e23aca770eb28241c8e14f1d804293b52f600b4f1e98bdeefe76a311ad64'
  version '2022.10.3'
  def install
    bin.install 'cloudflared'
  end
end
