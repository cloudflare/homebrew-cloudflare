class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/dl/warp-2017.11.3-darwin-amd64.tgz'
  sha256 '31d92ddf65e30447343b5be7d74fd51a354835833a96e289ad42daa47d36d1fb'
  version '2017.11.3'
  def install
    bin.install 'cloudflare-warp'
  end
end
