cask "cf-terraforming" do
  name "cf-terraforming"
  appcast "https://github.com/cloudflare/cf-terraforming/releases.atom"
  homepage "https://github.com/cloudflare/cf-terraforming"
  desc "cf-terraforming is a command line utility to facilitate terraforming your existing Cloudflare resources"
  binary "cf-terraforming"
  version "0.9.0"
  arch arm: "arm64", 
       intel: "amd64"

  sha256 arm:   "4319e0659bc9a11e728b2305a0eab7a553a1e83b68c65579d8e3c040a91a70b0",
         intel: "8efc09228be18a51ef300952f394a730dc065059ef58686c8745dbbeab5933d6"

  url "https://github.com/cloudflare/cf-terraforming/releases/download/v#{version}/cf-terraforming_#{version}_darwin_#{arch}.tar.gz"
end
