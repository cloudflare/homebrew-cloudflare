class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/dl/warp-2017.11.2-darwin-amd64.tgz'
  sha256 '7484f9c4b5b69bc3425fe40f90142744d1fbc5dc9d1fd1054b619cf52a79806e'
  version '2017.11.2'
  def install
    bin.install 'cloudflare-warp'
  end
end
