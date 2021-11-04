class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://packages.argotunnel.com/dl/cloudflared-2021.11.0-darwin-amd64.tgz'
  sha256 'f0cd1bd0f6ae7f775ab157c3ae757af7f75ee0423a939b1d39f38ca5b6a36ce4'
  version '2021.11.0'
  def install
    bin.install 'cloudflared'
  end
end
