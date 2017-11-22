class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/dl/warp-2017.11.2-darwin-amd64.tgz'
  sha256 '943946003891b660479ee9db015194f5f7267382fcdc524a568db4a6ec1a73f4'
  version '2017.11.2'
  def install
    bin.install 'cloudflare-warp'
  end
end
