cask "cf-terraforming" do
  arch arm:   "arm64",
       intel: "amd64"

  version "0.16.1"
  sha256 arm:   "55b8249fa33fa05b937d4294d20554ff1dd16cde93199cebf582223dda4b1fca",
         intel: "2cbb51dad8d86b3e10a424333197c2b70831336cfa4f6c134fbcb3a0efba7fd2"

  url "https://github.com/cloudflare/cf-terraforming/releases/download/v#{version}/cf-terraforming_#{version}_darwin_#{arch}.tar.gz"
  name "cf-terraforming"
  desc "Utility to export your existing Cloudflare resources as Terraform resources"
  homepage "https://github.com/cloudflare/cf-terraforming"

  livecheck do
    url "https://github.com/cloudflare/cf-terraforming/releases.atom"
  end

  binary "cf-terraforming"
end
