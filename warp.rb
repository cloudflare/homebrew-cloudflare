class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/dl/warp-2017.11.2-darwin-amd64.tgz'
  sha256 '8393866732c73e8f99cf2ff56284cd5d6ef4622851ad69a3ddf7a0085608cdd1'
  version '2017.11.2'
  def install
    bin.install 'cloudflare-warp'
  end
end
