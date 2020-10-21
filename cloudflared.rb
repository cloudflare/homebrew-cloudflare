class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2020.10.2-darwin-amd64.tgz'
  sha256 'cb0c4ae58f0cbf43eede3d025a1fd27ad7259efa1ebe4f1c06513f9e72c1e9b4'
  version '2020.10.2'
  def install
    bin.install 'cloudflared'
  end
end
