class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/downloads/warp-2017.11.1-darwin-amd64.tgz'
  sha256 'b8cba95750a2e6399e5ae687f972dae44ede2bf1a703ce12c0962137d25792cf'
  version '2017.11.1'
  def install
    bin.install 'cloudflare-warp'
  end
end
