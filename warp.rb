class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/dl/warp-2017.11.2-darwin-amd64.tgz'
  sha256 'a02cfc94f3eb7402f64ac0993ef94d5245fef366269797244a0dff2687b4b151'
  version '2017.11.2'
  def install
    bin.install 'cloudflare-warp'
  end
end
