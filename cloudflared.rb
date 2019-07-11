class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2019.7.0-darwin-amd64.tgz'
  sha256 'ad695aca31ac5174edc0a11b52708c4531613dfa5447e959ec841403bbb6916c'
  version '2019.7.0'
  def install
    bin.install 'cloudflared'
  end
end
