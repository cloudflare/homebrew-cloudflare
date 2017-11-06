class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/downloads/warp-2017.11.1-darwin-amd64.tgz'
  sha256 '1802e3a1aea2673b1b256b342c7b6dd96023312c3854e73b588a20b1ae1cf1c9'
  version '2017.11.1'
  def install
    bin.install 'cloudflare-warp'
  end
end
