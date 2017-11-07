class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/downloads/warp-2017.11.1-darwin-amd64.tgz'
  sha256 'daaf94fa09b6ca7ab4ab5adc74e641b4e54cf1efdc5a7f3b8734e28da1075d48'
  version '2017.11.1'
  def install
    bin.install 'cloudflare-warp'
  end
end
