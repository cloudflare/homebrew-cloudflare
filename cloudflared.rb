class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2020.12.0-darwin-amd64.tgz'
  sha256 'cb9036f412480b8026162a4e967a3be43e07d470a62dca5f9b3ff083899b44e5'
  version '2020.12.0'
  def install
    bin.install 'cloudflared'
  end
end
