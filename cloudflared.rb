class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2018.3.10-darwin-amd64.tgz'
  sha256 '838334aa8739881d61656f9f21d84823a4e013baf8c28b738c51945bb5b367e9'
  version '2018.3.10'
  def install
    bin.install 'cloudflared'
  end
end
