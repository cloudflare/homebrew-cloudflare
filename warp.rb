class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/dl/warp-2018.1.0-darwin-amd64.tgz'
  sha256 '2f89c58d6bc42698ec7643fb8d869edad4e60e4088db5239e49a2c3d0fd31da9'
  version '2018.1.0'
  def install
    bin.install 'cloudflare-warp'
  end
end
