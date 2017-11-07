class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/downloads/warp-2017.11.1-darwin-amd64.tgz'
  sha256 '80c2859b4603e084e3576a312fc6c2a236040881a3e4637d7de3b94b61901970'
  version '2017.11.1'
  def install
    bin.install 'cloudflare-warp'
  end
end
