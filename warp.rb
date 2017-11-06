class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/downloads/warp-2017.11.1-darwin-amd64.tgz'
  sha256 '837a6890bf9894172dbe2f4a7cc81ac538ea2df535a78fa5d0056354f2637017'
  version '2017.11.1'
  def install
    bin.install 'cloudflare-warp'
  end
end
