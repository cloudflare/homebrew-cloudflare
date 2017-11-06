class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/downloads/warp-2017.11.1-darwin-amd64.tgz'
  sha256 'f2729563701eb3e628771379f647f3a9a31394fa8be1cf8421412d7c0f9e4f0e'
  version '2017.11.1'
  def install
    bin.install 'cloudflare-warp'
  end
end
