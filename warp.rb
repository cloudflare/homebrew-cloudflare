class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/dl/warp-2017.11.2-darwin-amd64.tgz'
  sha256 '1faaea08e32ffa607ce0173074227d674dac07e05bee4ff6548c5714870c8baa'
  version '2017.11.2'
  def install
    bin.install 'cloudflare-warp'
  end
end
