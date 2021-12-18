cask "cf-terraforming" do
  name "cf-terraforming"
  appcast "https://github.com/cloudflare/cf-terraforming/releases.atom"
  homepage "https://github.com/cloudflare/cf-terraforming"
  desc "cf-terraforming is a command line utility to facilitate terraforming your existing Cloudflare resources"
  version "0.6.0"

  if Hardware::CPU.intel?
    url "https://github.com/cloudflare/cf-terraforming/releases/download/v#{version}/cf-terraforming_#{version}_darwin_amd64.tar.gz"
    sha256 "cad76567c1f0ba0266d950dbff3b42bbf423025eb73f967c7092e2ab71bc69be"
  else
    url "https://github.com/cloudflare/cf-terraforming/releases/download/v#{version}/cf-terraforming_#{version}_darwin_arm64.tar.gz"
    sha256 "741e617a3adb57d3d80f0b0f68c0a56c6afd2ddd7b58b0309d56befee18b66f3"
  end

  binary "cf-terraforming"
end
