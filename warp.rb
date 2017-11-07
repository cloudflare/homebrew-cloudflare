class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/downloads/warp-2017.11.1-darwin-amd64.tgz'
  sha256 '63dbbb1210e7b36464ec7a7cc78c6dbfca7ab3a338062c1278536daafde3fc6e'
  version '2017.11.1'
  def install
    bin.install 'cloudflare-warp'
  end
end
