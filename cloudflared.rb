class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2018.5.7-darwin-amd64.tgz'
  sha256 '54919920cf1d1a6658f1483a0789d6bd50915e815bed7545844e3cbdb9423296'
  version '2018.5.7'
  def install
    bin.install 'cloudflared'
  end
end
