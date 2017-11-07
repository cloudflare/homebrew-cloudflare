class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/downloads/warp-2017.11.1-darwin-amd64.tgz'
  sha256 '6fe5b59f7d88e61f201f41986fd859dfc01d74bcd0caacc03f0511e8e2a16f68'
  version '2017.11.1'
  def install
    bin.install 'cloudflare-warp'
  end
end
