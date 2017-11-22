class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/dl/warp-2017.11.2-darwin-amd64.tgz'
  sha256 'b1edccf64998e63cf5670e3afa5de317aa5c5630e1c2eb2fcb7c02583a6aaa04'
  version '2017.11.2'
  def install
    bin.install 'cloudflare-warp'
  end
end
