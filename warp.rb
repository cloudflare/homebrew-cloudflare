class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://bin.equinox.io/a/6cw2EviZndu/warp-2017.9.4-darwin-amd64.tar.gz'
  sha256 '7c151fbb9ea855b613389d7528822bc3a31cd0f389362e792b3ec38e3b561d35'
  version '2017.9.4'
  def install
    bin.install 'cloudflare-warp'
  end
end
