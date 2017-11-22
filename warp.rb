class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/dl/warp-2017.11.2-darwin-amd64.tgz'
  sha256 '799ce8609f441d0abce70205f2dd88f26b3b4f59a5f948239d490bfa32b0aa5d'
  version '2017.11.2'
  def install
    bin.install 'cloudflare-warp'
  end
end
