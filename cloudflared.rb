class Cloudflared < Formula
  desc 'Cloudflare Tunnel'
  homepage 'https://developers.cloudflare.com/cloudflare-one/connections/connect-apps'
  url 'https://packages.argotunnel.com/dl/cloudflared-2023.7.0-darwin-amd64.tgz'
  sha256 '720a85b9523ad4849d39efaa58ae0766d4676fb774ba946fa96bd0ecb51e1c66'
  version '2023.7.0'
  def install
    bin.install 'cloudflared'
  end
end
