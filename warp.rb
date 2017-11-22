class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/dl/warp-2017.11.2-darwin-amd64.tgz'
  sha256 '2b4405eaf93b9b86a06a30be4eceaebb1c00e403fbe2e9b7d1369e40f20b446e'
  version '2017.11.2'
  def install
    bin.install 'cloudflare-warp'
  end
end
