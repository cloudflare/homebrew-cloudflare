class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/downloads/warp-2017.11.1-darwin-amd64.tgz'
  sha256 'c4f8249d379e280241cf5206b0b02230412035353f336e2eb4658c0c2caec8eb'
  version '2017.11.1'
  def install
    bin.install 'cloudflare-warp'
  end
end
