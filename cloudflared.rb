class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://packages.argotunnel.com/dl/cloudflared-2022.3.2-darwin-amd64.tgz'
  sha256 '16af6ba39a9413ec7934f29e5a4d505f240f2ce3224d4b4ccea16a196410c76f'
  version '2022.3.2'
  def install
    bin.install 'cloudflared'
  end
end
