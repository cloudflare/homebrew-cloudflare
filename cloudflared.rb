class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2019.8.0-darwin-amd64.tgz'
  sha256 '68ad4c8d7387530a2f88e5199e9b5ac5b99b509b97653af51974143ff960b064'
  version '2019.8.0'
  def install
    bin.install 'cloudflared'
  end
end
