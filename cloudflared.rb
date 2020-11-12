class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://packages.argotunnel.com/dl/cloudflared-2020.11.4-darwin-amd64.tgz'
  sha256 '728a22be712cc102995bcfe95dd60054956880204873465b618913219393c4f0'
  version '2020.11.4'
  def install
    bin.install 'cloudflared'
  end
end
