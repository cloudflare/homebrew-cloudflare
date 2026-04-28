class TfMigrate < Formula
  desc "CLI tool for migrating Cloudflare Terraform provider configurations and state"
  homepage "https://github.com/cloudflare/tf-migrate"
  url "https://github.com/cloudflare/tf-migrate/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "814a497d74765a1932c98378835c9017f4302b61d01064e085c7dc83a767cd9f"
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
