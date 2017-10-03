class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://bin.equinox.io/a/2g3tCCeoHTF/warp-2017.10.0-darwin-amd64.tar.gz'
  sha256 '4642c0cb7ab54adbf50071517ce470af4bebf6090d423ae5db4fa657fbc67fe8'
  version '2017.10.0'
  def install
    bin.install 'cloudflare-warp'
  end
end
