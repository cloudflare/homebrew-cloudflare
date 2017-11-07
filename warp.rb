class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/downloads/warp-2017.11.1-darwin-amd64.tgz'
  sha256 '73eda2664763eb4f927cb8b729fc6b7202ec0201944f219089380188fbf6e99c'
  version '2017.11.1'
  def install
    bin.install 'cloudflare-warp'
  end
end
