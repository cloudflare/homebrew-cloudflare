class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/downloads/warp-2017.11.1-darwin-amd64.tgz'
  sha256 'ede4c5bc8f72cc39c7641d8d2255ded0ae3afcba343d1002f90f634a4896fce6'
  version '2017.11.1'
  def install
    bin.install 'cloudflare-warp'
  end
end
