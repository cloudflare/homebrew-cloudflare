cask "cf-terraforming" do
  arch arm:   "arm64",
       intel: "amd64"

  version "0.15.0"
  sha256 arm:   "280305f9f31387bfb219f316b7917f399eac99cb84942a4c013f38d8d89f3a3b",
         intel: "89e5009febb19ba0234132663516ccf8516c7d27f91cd83f5732bdf8a9738b18"

  url "https://github.com/cloudflare/cf-terraforming/releases/download/v#{version}/cf-terraforming_#{version}_darwin_#{arch}.tar.gz"
  name "cf-terraforming"
  desc "Utility to export your existing Cloudflare resources as Terraform resources"
  homepage "https://github.com/cloudflare/cf-terraforming"

  livecheck do
    url "https://github.com/cloudflare/cf-terraforming/releases.atom"
  end

  binary "cf-terraforming"
end
