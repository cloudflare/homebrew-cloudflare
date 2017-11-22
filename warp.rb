class Warp < Formula
  desc 'Cloudflare Warp'
  homepage 'https://warp.cloudflare.com'
  url 'https://warp.cloudflare.com/dl/warp-2017.11.2-darwin-amd64.tgz'
  sha256 'd971225da9c9191d5e359a18684654d4878094cbf0e1dd161f34ebe0c2e584c3'
  version '2017.11.2'
  def install
    bin.install 'cloudflare-warp'
  end
end
