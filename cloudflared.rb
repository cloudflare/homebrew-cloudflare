class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2018.3.8-darwin-amd64.tgz'
  sha256 'db7421b7f5641a3943ff95b9e3accf1ddb63c7d1e9a4a072a10937467bf62097'
  version '2018.3.8'
  def install
    bin.install 'cloudflared'
  end
end
