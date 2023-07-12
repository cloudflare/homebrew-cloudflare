cask "cf-terraforming" do
  arch arm:   "arm64",
       intel: "amd64"

  version "0.13.0"
  sha256 arm:   "73755ab2277ab94a90dd29832af65abcc9bc22e110970c25a2ac16218f65a076",
         intel: "910965fcf822242e96048744f128324b620518daf0aa75bfe76710e06c646ad9"

  url "https://github.com/cloudflare/cf-terraforming/releases/download/v#{version}/cf-terraforming_#{version}_darwin_#{arch}.tar.gz"
  livecheck do
    url "https://github.com/cloudflare/cf-terraforming/releases.atom"
  end
  name "cf-terraforming"
  desc "Utility to export your existing Cloudflare resources as Terraform resources"
  homepage "https://github.com/cloudflare/cf-terraforming"

  binary "cf-terraforming"
end
