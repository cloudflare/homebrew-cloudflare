class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2020.11.10-darwin-amd64.tgz'
  sha256 'd5ec45adb970b1c74be5dcd26dbf8959107b896d673369a73f82401edc443f36'
  version '2020.11.10'
  def install
    bin.install 'cloudflared'
  end
end
