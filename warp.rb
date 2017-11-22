class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/dl/warp-2017.11.2-darwin-amd64.tgz'
  sha256 'aa69e358a304f182c0af3e2f60d8d1a90703be97a1cd1b205ca5624b157c8a5e'
  version '2017.11.2'
  def install
    bin.install 'cloudflare-warp'
  end
end
