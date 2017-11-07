class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/downloads/warp-2017.11.1-darwin-amd64.tgz'
  sha256 '490575df04c2208f2eca4ee1ab37fe84f109214e72865e2968a953ab5cfb96d2'
  version '2017.11.1'
  def install
    bin.install 'cloudflare-warp'
  end
end
