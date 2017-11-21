class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/dl/warp-2017.11.2-darwin-amd64.tgz'
  sha256 'f53ef2b5d72db3c1188c52882a2e3a0eabfe84d604c852dca1ebf1c1f35d3678'
  version '2017.11.2'
  def install
    bin.install 'cloudflare-warp'
  end
end
