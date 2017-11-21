class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/dl/warp-2017.11.2-darwin-amd64.tgz'
  sha256 '299ff1bba99284740c768c40d6a84fded8abe53ab307fbbbd8037db03a6c4f29'
  version '2017.11.2'
  def install
    bin.install 'cloudflare-warp'
  end
end
