cask "cf-terraforming" do
  arch arm:   "arm64",
       intel: "amd64"

  version "0.12.0"
  sha256 arm:   "2b94116df31f7b388a95dacbf4099099edd4817045eed570930f64bf5becd765",
         intel: "aa60a8049a31e28738870a4f8a6f1bea6ceed44cbf564b964e95c6f765771ae1"

  url "https://github.com/cloudflare/cf-terraforming/releases/download/v#{version}/cf-terraforming_#{version}_darwin_#{arch}.tar.gz"
  appcast "https://github.com/cloudflare/cf-terraforming/releases.atom"
  name "cf-terraforming"
  desc "Utility to export your existing Cloudflare resources as Terraform resources"
  homepage "https://github.com/cloudflare/cf-terraforming"

  binary "cf-terraforming"
end
