class Cloudflared < Formula
  desc "Argo Tunnel"
  homepage "https://developers.cloudflare.com/argo-tunnel/"

  on_macos do
    url "https://developers.cloudflare.com/argo-tunnel/dl/cloudflared-2020.2.0-darwin-amd64.tgz"
    sha256 "9eb18f3d5b5e926dcbafecd35957c0709efbc10bf21d3e2523ab0392f0095643"
  end

  on_linux do
    url "https://bin.equinox.io/c/VdrWdbjqyF/cloudflared-2020.2.0-linux-amd64.tgz"
    sha256 "c59fe40d5895e3c17dff9914594abf0b68a89dc52ecaa0c2dbead72eec9b67c4"
  end

  def install
    bin.install "cloudflared"
  end
end
