class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/downloads/warp-2017.11.1-darwin-amd64.tgz'
  sha256 '160c1363a4750b0b6527d152c6f378669de9a164260979ae862032be9c92bff4'
  version '2017.11.1'
  def install
    bin.install 'cloudflare-warp'
  end
end
