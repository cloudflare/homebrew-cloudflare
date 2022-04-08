cask "cf-terraforming" do
  name "cf-terraforming"
  appcast "https://github.com/cloudflare/cf-terraforming/releases.atom"
  homepage "https://github.com/cloudflare/cf-terraforming"
  desc "cf-terraforming is a command line utility to facilitate terraforming your existing Cloudflare resources"
  version "0.7.1"

  if Hardware::CPU.intel?
    url "https://github.com/cloudflare/cf-terraforming/releases/download/v#{version}/cf-terraforming_#{version}_darwin_amd64.tar.gz"
    sha256 "bbe3fb417310a01ae1dca4cbdbc23211e574bca4383ebb8c34c63b50d27905ff"
  else
    url "https://github.com/cloudflare/cf-terraforming/releases/download/v#{version}/cf-terraforming_#{version}_darwin_arm64.tar.gz"
    sha256 "440bf3f7a392c7b7676bb7cf762a9863019b0f0c397073b4aef0bc16dc1219b8"
  end

  binary "cf-terraforming"
end
