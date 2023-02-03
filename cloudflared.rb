class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://packages.argotunnel.com/dl/cloudflared-2023.2.1-darwin-amd64.tgz'
  sha256 '474ca1d6c6c73feadee50e23c8af6382c63de0b4271fc2d1f29a15fd315cd4e4'
  version '2023.2.1'
  def install
    bin.install 'cloudflared'
  end
end
