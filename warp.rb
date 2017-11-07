class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/downloads/warp-2017.11.1-darwin-amd64.tgz'
  sha256 'e1b40a5256c12b35b966da16dc5aa9c18db27b844579be684ef5e5f0b27615e8'
  version '2017.11.1'
  def install
    bin.install 'cloudflare-warp'
  end
end
