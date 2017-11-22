class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/dl/warp-2017.11.2-darwin-amd64.tgz'
  sha256 '06630b248f5635c9c4fb2f2f568509c7e833ecfeeab5a1e8e6b46a932012725d'
  version '2017.11.2'
  def install
    bin.install 'cloudflare-warp'
  end
end
