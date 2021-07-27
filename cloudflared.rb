class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2021.7.2-darwin-amd64.tgz'
  sha256 '0d90fe22f2120a9f28f8a2115073824c27ec33b84a2399f9d51af68cf5575729'
  version '2021.7.2'
  def install
    bin.install 'cloudflared'
  end
end
