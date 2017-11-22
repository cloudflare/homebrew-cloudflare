class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/dl/warp-2017.11.2-darwin-amd64.tgz'
  sha256 '0e21b5656b584dba97c0693907c8a101591715e6e85391002621b208c8ce5a94'
  version '2017.11.2'
  def install
    bin.install 'cloudflare-warp'
  end
end
