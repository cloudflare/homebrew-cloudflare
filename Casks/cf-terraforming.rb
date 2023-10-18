cask "cf-terraforming" do
  arch arm:   "arm64",
       intel: "amd64"

  version "0.14.0"
  sha256 arm:   "3b00ff4f8e2fad563f89efa445eed3e3f1e82b9eb97223a19aaad7df36d7b851",
         intel: "3c8ff74054b3812d8b2163d7e1c34d3d67370b425dd5584d5f10a9cd61d4ad1a"

  url "https://github.com/cloudflare/cf-terraforming/releases/download/v#{version}/cf-terraforming_#{version}_darwin_#{arch}.tar.gz"
  livecheck do
    url "https://github.com/cloudflare/cf-terraforming/releases.atom"
  end
  name "cf-terraforming"
  desc "Utility to export your existing Cloudflare resources as Terraform resources"
  homepage "https://github.com/cloudflare/cf-terraforming"

  binary "cf-terraforming"
end
