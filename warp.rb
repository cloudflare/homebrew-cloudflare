class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/downloads/warp-2017.11.1-darwin-amd64.tgz'
  sha256 '876b6360a342f159f99376f789adef409e72b62d2d8bbaa14014763f58615932'
  version '2017.11.1'
  def install
    bin.install 'cloudflare-warp'
  end
end
