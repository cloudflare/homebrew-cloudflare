class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/downloads/warp-2017.11.1-darwin-amd64.tgz'
  sha256 'aa97aa47869e30bca29271577e003e4f086ca76b3db2868627b97f7ee5e47192'
  version '2017.11.1'
  def install
    bin.install 'cloudflare-warp'
  end
end
