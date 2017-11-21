class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/dl/warp-2017.11.2-darwin-amd64.tgz'
  sha256 'dae8fe33c248041467af64c1097384f1ba3f2d34b0e16d072d37a4b2c5fe27f8'
  version '2017.11.2'
  def install
    bin.install 'cloudflare-warp'
  end
end
