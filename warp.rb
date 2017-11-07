class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/downloads/warp-2017.11.1-darwin-amd64.tgz'
  sha256 'b986b77ea1d42d8035bf25b739191323b08ed69deb6a09a969b011422e49db25'
  version '2017.11.1'
  def install
    bin.install 'cloudflare-warp'
  end
end
