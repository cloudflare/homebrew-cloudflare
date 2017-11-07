class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/downloads/warp-2017.11.1-darwin-amd64.tgz'
  sha256 'f289262efe1806638c1cb3ded0599b977e464d275d370bc19fe8ae94dd038393'
  version '2017.11.1'
  def install
    bin.install 'cloudflare-warp'
  end
end
