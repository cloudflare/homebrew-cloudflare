class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/downloads/warp-2017.11.1-darwin-amd64.tgz'
  sha256 '8fc700264da1139f0a9e83e068e3757b9ce3e5c494c82ae78bdfa5bef0f7b8a4'
  version '2017.11.1'
  def install
    bin.install 'cloudflare-warp'
  end
end
