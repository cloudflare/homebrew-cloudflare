class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/downloads/warp-2017.11.1-darwin-amd64.tgz'
  sha256 'bb9c6b3f7177192b513531fc36bf556c509db4766847001d898d94e107804eb5'
  version '2017.11.1'
  def install
    bin.install 'cloudflare-warp'
  end
end
