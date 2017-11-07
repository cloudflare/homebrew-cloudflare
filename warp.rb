class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/downloads/warp-2017.11.1-darwin-amd64.tgz'
  sha256 '994985bea3eb684a971f1a3612ba1c7d3836bea49cfd8bcf6eb0538df302b35e'
  version '2017.11.1'
  def install
    bin.install 'cloudflare-warp'
  end
end
