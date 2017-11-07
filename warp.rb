class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/downloads/warp-2017.11.1-darwin-amd64.tgz'
  sha256 'bc6e583285e9b5b755dea7f1bdf9d6335995a32cd4acc7470ef8e790267dbfa1'
  version '2017.11.1'
  def install
    bin.install 'cloudflare-warp'
  end
end
