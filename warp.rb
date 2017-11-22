class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/dl/warp-2017.11.2-darwin-amd64.tgz'
  sha256 '740c04c31029b81a6ba46e2ec27f41ea339b200618b17118768704f8db568824'
  version '2017.11.2'
  def install
    bin.install 'cloudflare-warp'
  end
end
