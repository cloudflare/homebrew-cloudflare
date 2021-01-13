class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2021.1.1-darwin-amd64.tgz'
  sha256 'fd83790cfe3cf387311d7f87b2c1fa3858be908e00a837c6bffa577dd94f7c8d'
  version '2021.1.1'
  def install
    bin.install 'cloudflared'
  end
end
