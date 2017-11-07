class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/downloads/warp-2017.11.1-darwin-amd64.tgz'
  sha256 'cdadaa107035e8308ddaa0ff44d8ac121b7a7469cfc63099fef33641e291eda0'
  version '2017.11.1'
  def install
    bin.install 'cloudflare-warp'
  end
end
