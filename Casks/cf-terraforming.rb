cask "cf-terraforming" do
  name "cf-terraforming"
  appcast "https://github.com/cloudflare/cf-terraforming/releases.atom"
  homepage "https://github.com/cloudflare/cf-terraforming"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/cloudflare/cf-terraforming/releases/download/v#{version}/cf-terraforming_#{version}_darwin_amd64.tar.gz"
      sha256 "dc3dc22d38c32614f3c19fd48d829aee8e6f8ef001ed3e6e5cbcf24607a098c5"
    else
      url "https://github.com/cloudflare/cf-terraforming/releases/download/v#{version}/cf-terraforming_#{version}_darwin_arm64.tar.gz"
      sha256 "a1d22a187955e7237a49c2b67e4942be20c0d2d4f3c6ece3bee90dbf47cf961f"
    end
  end
  
  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/cloudflare/cf-terraforming/releases/download/v#{version}/cf-terraforming_#{version}_linux_amd64.tar.gz"
      sha256 "fa0627f53364f375bc67c2e7d736efe7eb8709773910220d84c8128f7ed4ff45"
    else
      url "https://github.com/cloudflare/cf-terraforming/releases/download/v#{version}/cf-terraforming_#{version}_linux_arm64.tar.gz"
      sha256 "f58dce7e42f851f97755f6a39728251f67f80710ce379a5f05f0da56290844f6"
    end
  end    

  binary "cf-terraforming"
end
