class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://packages.argotunnel.com/dl/cloudflared-2022.7.0-darwin-amd64.tgz'
  sha256 'c8020dafc888765aaab5230409f1e606eda20631b9559d636a9bb0a2766890ae'
  version '2022.7.0'
  def install
    bin.install 'cloudflared'
  end
end
