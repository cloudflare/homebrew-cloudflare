class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/dl/warp-2017.11.2-darwin-amd64.tgz'
  sha256 '78b8cb1e00e979dd2ec7ad99cdd990d5b73917bd3fcc665fa199175721bf624c'
  version '2017.11.2'
  def install
    bin.install 'cloudflare-warp'
  end
end
