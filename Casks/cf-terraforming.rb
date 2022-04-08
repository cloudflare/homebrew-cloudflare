cask "cf-terraforming" do
  name "cf-terraforming"
  appcast "https://github.com/cloudflare/cf-terraforming/releases.atom"
  homepage "https://github.com/cloudflare/cf-terraforming"
  desc "cf-terraforming is a command line utility to facilitate terraforming your existing Cloudflare resources"
  version "0.7.2"

  if Hardware::CPU.intel?
    url "https://github.com/cloudflare/cf-terraforming/releases/download/v#{version}/cf-terraforming_#{version}_darwin_amd64.tar.gz"
    sha256 "37a216b9ab6f939cd9c8ba56e2c8ba0c7b231f57d4f7ff6673c6577d73afe342"
  else
    url "https://github.com/cloudflare/cf-terraforming/releases/download/v#{version}/cf-terraforming_#{version}_darwin_arm64.tar.gz"
    sha256 "ef513b34e24dbc906337edac100e18ab337cf87a1b824801c6a5e5cf9629dd2c"
  end

  binary "cf-terraforming"
end
