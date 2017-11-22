class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/dl/warp-2017.11.2-darwin-amd64.tgz'
  sha256 '100b7c9c6eb5c30accbd2938fe99a5faedc9b946b6aec330037d70b0074b3ddb'
  version '2017.11.2'
  def install
    bin.install 'cloudflare-warp'
  end
end
