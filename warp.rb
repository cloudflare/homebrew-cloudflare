class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/dl/warp-2018.2.1-darwin-amd64.tgz'
  sha256 'c69cbd53b7d40daf03546c554336804488d6e4c5be4f91fe2cb9af2051925059'
  version '2018.2.1'
  def install
    bin.install 'cloudflare-warp'
  end
end
