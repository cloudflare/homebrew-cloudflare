class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/downloads/warp-2017.11.1-darwin-amd64.tgz'
  sha256 '5c9eb5f51a6703f6a2731b20db526156ff275803c8b23f8faac449014ecafa30'
  version '2017.11.1'
  def install
    bin.install 'cloudflare-warp'
  end
end
