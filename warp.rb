class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/downloads/warp-2017.11.1-darwin-amd64.tgz'
  sha256 '951d6c8687cc26dad9854fd8ab484a13be513d5d7d74f9bfb42e8106f345eef6'
  version '2017.11.1'
  def install
    bin.install 'cloudflare-warp'
  end
end
