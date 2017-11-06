class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/downloads/warp-2017.11.1-darwin-amd64.tgz'
  sha256 '164e19685838eee4c22d534a39724e8cd6315ec9ee422768c8c05ab5aa9c31e4'
  version '2017.11.1'
  def install
    bin.install 'cloudflare-warp'
  end
end
