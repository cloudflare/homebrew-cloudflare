class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/dl/warp-2018.3.0-darwin-amd64.tgz'
  sha256 '4444ee8cfc9388c09390dba470f16251adced9bc9022edca6367843c45d1b096'
  version '2018.3.0'
  def install
    bin.install 'cloudflare-warp'
  end
end
