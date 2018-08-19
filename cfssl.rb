class Cfssl < Formula
  desc "Cloudflare's PKI and TLS toolkit"
  homepage "https://github.com/cloudflare/cfssl"
  url "https://github.com/cloudflare/cfssl.git",
    :tag => "1.3.2",
    :revision => "5d63dbd981b5c408effbb58c442d54761ff94fbd"
  head "https://github.com/cloudflare/cfssl.git"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    bin_path = buildpath/"src/github.com/cloudflare/cfssl"
    bin_path.install Dir["*"]

    cd bin_path do
      system "go", "build", "-o", bin/"cfssl", "cmd/cfssl/cfssl.go"
    end
  end

  test do
    system "#{bin}/cfssl", "version"
  end
end
