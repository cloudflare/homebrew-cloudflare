class TfMigrate < Formula
  desc "CLI tool for migrating Cloudflare Terraform provider configurations"
  homepage "https://github.com/cloudflare/tf-migrate"
  url "https://github.com/cloudflare/tf-migrate/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "ee9685858a4ef918937ab7d296030bde74301e2ac40e58b7c2289df72ccf566c"
  license "Apache-2.0"
  head "https://github.com/cloudflare/tf-migrate.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build",
      "-ldflags", "-s -w -X main.version=#{version}",
      "-o", "tf-migrate",
      "./cmd/tf-migrate"

    bin.install "tf-migrate"
  end

  test do
    system "#{bin}/tf-migrate", "version"
  end
end
