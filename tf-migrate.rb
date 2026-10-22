class TfMigrate < Formula
  desc "CLI tool for migrating Cloudflare Terraform provider configurations"
  homepage "https://github.com/cloudflare/tf-migrate"
  url "https://github.com/cloudflare/tf-migrate/archive/refs/tags/v1.1.1.tar.gz"
  sha256 "69d39a0282aecce07d82a574082493ac8f6bd62c40ca728899cabd528fffb863"
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
