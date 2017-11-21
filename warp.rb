class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/dl/warp-2017.11.2-darwin-amd64.tgz'
  sha256 'b575c258a1ea0b802d0b6a175c411bf806d716b922c48f95e8d3010a90de5df8'
  version '2017.11.2'
  def install
    bin.install 'cloudflare-warp'
  end
end
