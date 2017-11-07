class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/downloads/warp-2017.11.1-darwin-amd64.tgz'
  sha256 '9e1e44602fc0e67b1c14a80b2cf605fd7e70f2137e5c7c2f81cbd4b8561d59e8'
  version '2017.11.1'
  def install
    bin.install 'cloudflare-warp'
  end
end
