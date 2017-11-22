class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/dl/warp-2017.11.2-darwin-amd64.tgz'
  sha256 '2dca4a2aa5732bb54f5a89f89e719075d01678ad3ca25b8ce9c0917f567453f1'
  version '2017.11.2'
  def install
    bin.install 'cloudflare-warp'
  end
end
