class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/downloads/warp-2017.10.2-darwin-amd64.tgz'
  sha256 'ac76bc57b7302d1f574be9433bbcf6895563486326f9fca0afc0fdac0c240aac'
  version '2017.10.2'
  def install
    bin.install 'cloudflare-warp'
  end
end
