class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2021.7.1-darwin-amd64.tgz'
  sha256 '1fd464302e8999aa12dfe430f6f64770c09c86038a1004421093020837fdecac'
  version '2021.7.1'
  def install
    bin.install 'cloudflared'
  end
end
