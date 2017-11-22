class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/dl/warp-2017.11.2-darwin-amd64.tgz'
  sha256 '18073f68089871dd0fd2357fe0ac9b4cf19497b34014bd7ab983acf2c8537070'
  version '2017.11.2'
  def install
    bin.install 'cloudflare-warp'
  end
end
