class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/dl/warp-2017.12.0-darwin-amd64.tgz'
  sha256 '8ade4fd3ac8c69be4b977cd21cd230f594e6c42c44cec8cce0e6e3682386a86d'
  version '2017.12.0'
  def install
    bin.install 'cloudflare-warp'
  end
end
