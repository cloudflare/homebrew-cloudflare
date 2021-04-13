cask "cf-terraforming" do
  name "cf-terraforming"
  appcast "https://github.com/cloudflare/cf-terraforming/releases.atom"
  homepage "https://github.com/cloudflare/cf-terraforming"
  version "0.1.0"

  if Hardware::CPU.intel?
    url "https://github.com/cloudflare/cf-terraforming/releases/download/v#{version}/cf-terraforming_#{version}_darwin_amd64.tar.gz"
    sha256 "ea20cc1467d257d4d97b6e6c9aab193ef6a824ef481d4dd3648fb4e842fbec9d"
    binary "cf-terraforming"
  else
    url "https://github.com/cloudflare/cf-terraforming/releases/download/v#{version}/cf-terraforming_#{version}_darwin_arm64.tar.gz"
    sha256 "5b66ddd2180f4f9f26e17a6286e4bac18bef9b97ce5e202609b582801e2cc37c"
    binary "cf-terraforming"
  end
end
