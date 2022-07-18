cask "cf-terraforming" do
  name "cf-terraforming"
  appcast "https://github.com/cloudflare/cf-terraforming/releases.atom"
  homepage "https://github.com/cloudflare/cf-terraforming"
  desc "cf-terraforming is a command line utility to facilitate terraforming your existing Cloudflare resources"
  version "0.8.1"

  if Hardware::CPU.intel?
    url "https://github.com/cloudflare/cf-terraforming/releases/download/v#{version}/cf-terraforming_#{version}_darwin_amd64.tar.gz"
    sha256 "07323fc226f1c7a3564a83573f5ede467d208d20163cdfb58b0123efb29cc8fe"
  else
    url "https://github.com/cloudflare/cf-terraforming/releases/download/v#{version}/cf-terraforming_#{version}_darwin_arm64.tar.gz"
    sha256 "7cc7543d7ca6e2fbd0662dfd5922059ea5d518cf3d1f91bb3175f1c91d195566"
  end

  binary "cf-terraforming"
end
