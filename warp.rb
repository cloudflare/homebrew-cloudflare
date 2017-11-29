class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/dl/warp-2017.11.4-darwin-amd64.tgz'
  sha256 '92d1d2681155f33d7c8ed30eb4c7a750afc4234abc6061d3d9d336db5af5fbeb'
  version '2017.11.4'
  def install
    bin.install 'cloudflare-warp'
  end
end
