class CfTerraforming < Formula
  desc "Utility to export your existing Cloudflare resources as Terraform resources"
  homepage "https://github.com/cloudflare/cf-terraforming"
  url "https://github.com/cloudflare/cf-terraforming/archive/refs/tags/v0.22.0.tar.gz"
  sha256 "99f2dd223907418dc3a988bdd8f510f07d3fd5157d22a42b8eca1d662d19be53"
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
