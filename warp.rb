class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/downloads/warp-2017.11.1-darwin-amd64.tgz'
  sha256 '20de0838bd204efb4681d6bb2582ce499537027767f936d27232e3cda20d4e0b'
  version '2017.11.1'
  def install
    bin.install 'cloudflare-warp'
  end
end
