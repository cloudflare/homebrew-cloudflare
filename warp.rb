class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/dl/warp-2017.11.2-darwin-amd64.tgz'
  sha256 'b4c35363ec5d5ae5211cd4448e987a3fcf0d894dc564e0f8cf7aaa497f4789b4'
  version '2017.11.2'
  def install
    bin.install 'cloudflare-warp'
  end
end
