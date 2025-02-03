class CfTerraforming < Formula
  desc "Utility to export your existing Cloudflare resources as Terraform resources"
  homepage "https://github.com/cloudflare/cf-terraforming"
  url "https://github.com/cloudflare/cf-terraforming/archive/refs/tags/v0.23.3.tar.gz"
  sha256 "a60037470a637b7bb81e5b345a182d8907aafdbf8ab7836d8817b5e2e6496228"
  license "Mozilla Public License 2.0"
  head "https://github.com/cloudflare/cf-terraforming.git", branch: "master"

  depends_on "go" => :build

  def install
    system "go", "build",
      "-gcflags=all=-trimpath=#{buildpath}",
      "-asmflags=all=-trimpath=#{buildpath}",
      "-ldflags", "-X github.com/cloudflare/cf-terraforming/internal/app/cf-terraforming/cmd.versionString=#{version}",
      "-o", "cf-terraforming", "cmd/cf-terraforming/main.go"

    bin.install "cf-terraforming"
  end

  test do
    system "#{bin}/cf-terraforming", "version"
  end
end
