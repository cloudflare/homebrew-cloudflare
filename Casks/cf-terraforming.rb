cask "cf-terraforming" do
  name "cf-terraforming"
  appcast "https://github.com/cloudflare/cf-terraforming/releases.atom"
  homepage "https://github.com/cloudflare/cf-terraforming"
  version "0.1.1"

  if Hardware::CPU.intel?
    url "https://github.com/cloudflare/cf-terraforming/releases/download/v#{version}/cf-terraforming_#{version}_darwin_amd64.tar.gz"
    sha256 "be29976d0814fe97848cf66baf35aaf84582cf714859ec427bdccc8fed384888"
  else
    url "https://github.com/cloudflare/cf-terraforming/releases/download/v#{version}/cf-terraforming_#{version}_darwin_arm64.tar.gz"
    sha256 "303c55b8140f3c876d2c0af3e1535f85ecb61fe7f3b175365b32a00c70daeea4"
  end

  binary "cf-terraforming"
end
