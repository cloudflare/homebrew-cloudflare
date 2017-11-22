class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/dl/warp-2017.11.2-darwin-amd64.tgz'
  sha256 '3f139cba8b5aada89c2ba2cd69d58f5f1405faaac6e0d6ece07febcdfdf14849'
  version '2017.11.2'
  def install
    bin.install 'cloudflare-warp'
  end
end
