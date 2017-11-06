class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/downloads/warp-2017.11.1-darwin-amd64.tgz'
  sha256 '384d2d97e1c9ddb461d597813b6d6f749ee135f57f4935e8c977c7508ae50f7a'
  version '2017.11.1'
  def install
    bin.install 'cloudflare-warp'
  end
end
