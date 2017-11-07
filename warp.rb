class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/dl/warp-2017.11.1-darwin-amd64.tgz'
  sha256 'a2de37bfdabe8e6f538381c2fe694705701398522b8e597650ea895a19ab363b'
  version '2017.11.1'
  def install
    bin.install 'cloudflare-warp'
  end
end
