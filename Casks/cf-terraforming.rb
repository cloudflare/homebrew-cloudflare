cask "cf-terraforming" do
  name "cf-terraforming"
  appcast "https://github.com/cloudflare/cf-terraforming/releases.atom"
  homepage "https://github.com/cloudflare/cf-terraforming"
  desc "cf-terraforming is a command line utility to facilitate terraforming your existing Cloudflare resources"
  binary "cf-terraforming"
  version "0.11.0"
  arch arm: "arm64", 
       intel: "amd64"

  sha256 arm:   "3d6183d08907cb045f927330addf7d2bbb2c2fdb32ddad33b11d78b81c9655ad",
         intel: "5173ed67265f419b3a3f61ecb245c213b7380483149b3ee37cf566bb26d64322"

  url "https://github.com/cloudflare/cf-terraforming/releases/download/v#{version}/cf-terraforming_#{version}_darwin_#{arch}.tar.gz"
end
