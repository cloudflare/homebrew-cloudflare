cask "cf-terraforming" do
  name "cf-terraforming"
  appcast "https://github.com/cloudflare/cf-terraforming/releases.atom"
  homepage "https://github.com/cloudflare/cf-terraforming"
  desc "cf-terraforming is a command line utility to facilitate terraforming your existing Cloudflare resources"
  binary "cf-terraforming"
  version "0.10.0"
  arch arm: "arm64", 
       intel: "amd64"

  sha256 arm:   "504ffe9421c7d995746896d97ac0401663bbf45063cd25a3cd9bf2864549ec1e",
         intel: "4998cce289ebf4129ce6ea0d2036c53e2bb884e92d906f2b085e7b585ca10346"

  url "https://github.com/cloudflare/cf-terraforming/releases/download/v#{version}/cf-terraforming_#{version}_darwin_#{arch}.tar.gz"
end
