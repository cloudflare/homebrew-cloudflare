class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2021.1.3-darwin-amd64.tgz'
  sha256 '4bae4c80d0fdf7eeadbcc898bc019ea903d7067bc5352ff7754fcbde3cdc1852'
  version '2021.1.3'
  def install
    bin.install 'cloudflared'
  end
end
