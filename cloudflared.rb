class Cloudflared < Formula
  desc 'Argo Tunnel'
  homepage 'https://developers.cloudflare.com/argo-tunnel/'
  url 'https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2018.3.9-darwin-amd64.tgz'
  sha256 'e79e34f70ff1ca391fa2bf9222414b45ee9782ba1b81a1e22779cbbab628a5c9'
  version '2018.3.9'
  def install
    bin.install 'cloudflared'
  end
end
