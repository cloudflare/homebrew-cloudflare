class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://bin.equinox.io/a/aZkwrDbBrND/cloudflared-2020.5.0-darwin-amd64.tar.gz'
  sha256 'b06ec742c1a18bd5a6ac31b7279f68a8dc787189a8e1b5f2aecee3b376725c85'
  version '2020.5.0'
  def install
    bin.install 'cloudflared'
  end
end
