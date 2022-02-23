class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://packages.argotunnel.com/dl/cloudflared-2022.2.2-darwin-amd64.tgz'
  sha256 'd2537a949cdff2d9d924a82fda451b867bc0fc0c4560a0e83212564bfab87015'
  version '2022.2.2'
  def install
    bin.install 'cloudflared'
  end
end
