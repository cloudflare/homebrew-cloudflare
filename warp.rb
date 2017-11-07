class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/downloads/warp-2017.11.1-darwin-amd64.tgz'
  sha256 'dc22625b7964c0311c7bb4cf203e6570a03673237a8b21d83fdd26b9901b81f2'
  version '2017.11.1'
  def install
    bin.install 'cloudflare-warp'
  end
end
