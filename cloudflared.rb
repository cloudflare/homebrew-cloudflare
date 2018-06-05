class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2018.6.0-darwin-amd64.tgz'
  sha256 'ed5aaca0eff33582e91aae36b2cd8b0c396b336eff80b24acc27e5770823d877'
  version '2018.6.0'
  def install
    bin.install 'cloudflared'
  end
end
