class CfTerraforming < Formula
  desc "cf-terraforming is a command line utility to facilitate terraforming your existing Cloudflare resources"
  homepage "https://github.com/cloudflare/cf-terraforming"
  url "https://github.com/cloudflare/cf-terraforming/archive/refs/tags/v0.1.0.tar.gz"
  license "MPL-2.0"

  depends_on "go" => :build
  bottle :unneeded

  def install
    ENV["GOPATH"] = buildpath

    bin_path = buildpath/"src/github.com/cloudflare/cf-terraforming"
    bin_path.install Dir["*"]
    cd bin_path do
      system "make", "build"
      bin.install "cf-terraforming"
    end
  end

  test do
    system "which", "cf-terraforming"
  end
end
