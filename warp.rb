class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/dl/warp-2017.11.2-darwin-amd64.tgz'
  sha256 '77143fbd14aa2936606ce3d364ecf9ce3216e4de799cfbafa0f47ee79e2c0f19'
  version '2017.11.2'
  def install
    bin.install 'cloudflare-warp'
  end
end
