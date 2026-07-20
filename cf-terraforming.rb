class CfTerraforming < Formula
  desc "Utility to export your existing Cloudflare resources as Terraform resources"
  homepage "https://github.com/cloudflare/cf-terraforming"
  url "https://github.com/cloudflare/cf-terraforming/archive/refs/tags/v0.26.0.tar.gz"
  sha256 "f2bd281ae08038efa858acbc7af937b305e5f4a042f81574cfc0922fde5cc8e8"
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
