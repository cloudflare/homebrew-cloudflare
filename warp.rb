class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/dl/warp-2018.2.0-darwin-amd64.tgz'
  sha256 '54931dca1e2a190a70314cc7ff39365d5c0afddbfd4fb5c6b6a39af28724a719'
  version '2018.2.0'
  def install
    bin.install 'cloudflare-warp'
  end
end
