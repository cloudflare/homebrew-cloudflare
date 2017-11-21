class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/dl/warp-2017.11.2-darwin-amd64.tgz'
  sha256 '3bd55076bb350ecb4686ad1a74b94f4967dc8d1c6fc5334776cb8af654672f9e'
  version '2017.11.2'
  def install
    bin.install 'cloudflare-warp'
  end
end
