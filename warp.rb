class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/dl/warp-2017.11.2-darwin-amd64.tgz'
  sha256 'd62e5dbd99f24c7a7d569d349e6de660c2aea6ce56d6a7eb6c8ac4536f5a55e5'
  version '2017.11.2'
  def install
    bin.install 'cloudflare-warp'
  end
end
