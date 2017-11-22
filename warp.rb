class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/dl/warp-2017.11.2-darwin-amd64.tgz'
  sha256 '8b955ea5b0975752dbf8ca6142f3fd5f2220cb7e1abcb66edfffa49719f263c0'
  version '2017.11.2'
  def install
    bin.install 'cloudflare-warp'
  end
end
