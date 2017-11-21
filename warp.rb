class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/dl/warp-2017.11.2-darwin-amd64.tgz'
  sha256 'c4e3f5c9bb1d1073911bb792a686572edb7c5959217aeaa5f68bde9fa4ecedf8'
  version '2017.11.2'
  def install
    bin.install 'cloudflare-warp'
  end
end
