class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/downloads/warp-2017.11.1-darwin-amd64.tgz'
  sha256 'f20054d7ba73a8f236ca1dfe81a972066466439db4fda7acfc57827babdea686'
  version '2017.11.1'
  def install
    bin.install 'cloudflare-warp'
  end
end
