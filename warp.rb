class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/downloads/warp-2017.11.1-darwin-amd64.tgz'
  sha256 '6518589c99eaf8b8ec19df7e0fcfddd92b449f0ba4a42684a9dadddabf2abe54'
  version '2017.11.1'
  def install
    bin.install 'cloudflare-warp'
  end
end
