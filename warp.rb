class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://bin.equinox.io/a/3DHMVmdECG6/warp-2017.9.3-darwin-amd64.tar.gz'
  sha256 '7d8b32adf14a43f09b2a7f4534c62cd38b8b62ff296fce55fb996830f9b0be80'
  version '2017.9.3'
  def install
    bin.install 'cloudflare-warp'
  end
end
