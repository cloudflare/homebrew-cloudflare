class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/dl/warp-2017.11.2-darwin-amd64.tgz'
  sha256 'cc86a2efc622cf7f4ccc48bb0348ecd0e4de46e998728deb2a0e22182316ec2d'
  version '2017.11.2'
  def install
    bin.install 'cloudflare-warp'
  end
end
