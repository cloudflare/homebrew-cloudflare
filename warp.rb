class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/dl/warp-2017.12.1-darwin-amd64.tgz'
  sha256 'b5308b7e74c126dca986a9a9a8de92661938b1b802ace9c8196d2011f40cc5ee'
  version '2017.12.1'
  def install
    bin.install 'cloudflare-warp'
  end
end
