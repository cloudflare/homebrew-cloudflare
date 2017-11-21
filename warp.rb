class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/dl/warp-2017.11.2-darwin-amd64.tgz'
  sha256 'eeaf17b167b1c6eecfbf4440369e34d4c68cfdf4bcf0417e7aef4af1c6ce8dbf'
  version '2017.11.2'
  def install
    bin.install 'cloudflare-warp'
  end
end
