class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/downloads/warp-2017.11.1-darwin-amd64.tgz'
  sha256 '72fada67d545e294e512d4b017f23e71bcba2c4cd1ce6ae4430acb8a2fe07d7d'
  version '2017.11.1'
  def install
    bin.install 'cloudflare-warp'
  end
end
