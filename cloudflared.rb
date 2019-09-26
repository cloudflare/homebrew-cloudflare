class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2019.9.1-darwin-amd64.tgz'
  sha256 '74a652d842c454518f6c1bf5a7cb3c5f72fcc97eeac41ffdc203a2c54e13c276'
  version '2019.9.1'
  def install
    bin.install 'cloudflared'
  end
end
