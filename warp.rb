class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/dl/warp-2017.11.2-darwin-amd64.tgz'
  sha256 '7c37fc000289fddca4ba7a610de35491768a8bd11a64dab1a1ebd9a415610136'
  version '2017.11.2'
  def install
    bin.install 'cloudflare-warp'
  end
end
