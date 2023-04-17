class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://packages.argotunnel.com/dl/cloudflared-2023.4.1-darwin-amd64.tgz'
  sha256 '3d767f78ed1e153049d2b17cffc6ef0f9b268d8473412fc1b62939f0b546ae71'
  version '2023.4.1'
  def install
    bin.install 'cloudflared'
  end
end
