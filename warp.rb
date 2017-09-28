class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://bin.equinox.io/a/kTvjvytNmY8/warp-2017.9.6-darwin-amd64.tar.gz'
  sha256 'b6bd0b9fc87a3042193b936b08fd3a9bfcd7fcd65acc24c4c506a3c5e25cff8d'
  version '2017.9.6'
  def install
    bin.install 'cloudflare-warp'
  end
end
