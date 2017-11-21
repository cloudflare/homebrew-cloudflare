class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/dl/warp-2017.11.2-darwin-amd64.tgz'
  sha256 '73f3800087b3264b2985f51ae38666128081d1c1c3b4d615bcc6f19de682f056'
  version '2017.11.2'
  def install
    bin.install 'cloudflare-warp'
  end
end
