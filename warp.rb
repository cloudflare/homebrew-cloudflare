class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/downloads/warp-2017.11.1-darwin-amd64.tgz'
  sha256 '3f97647f87cb60b0be2f5193c81e356bf66f3cae47828dd3a7284074ffc1b4f4'
  version '2017.11.1'
  def install
    bin.install 'cloudflare-warp'
  end
end
