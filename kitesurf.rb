class Kitesurf < Formula
  desc "Interactive terminal browser for the web"
  homepage "https://kitesurf.dev"
  url "file://#{__dir__}/src/kitesurf-cli.tar.gz"
  version "0.0.4"
  sha256 "922c6f47f4dce5d6902ac506d788550c7814125287edf5f992733db124e57348"
  license "Apache-2.0"
  version_scheme 1

  depends_on "pkgconf" => :build
  depends_on "rust" => :build

  on_linux do
    depends_on "openssl@3"
  end

  def install
    system "cargo", "install", *std_cargo_args
  end

  def caveats
    <<~EOS
      Kitesurf connects through Cloudflare Browser Run by default.
      Run `kitesurf login` to sign in, or open a URL to start login automatically.
      Use `kitesurf --playground URL` for the rate-limited public playground.
      API tokens use KITESURF_API_TOKEN together with CLOUDFLARE_ACCOUNT_ID.
    EOS
  end

  test do
    assert_match "kitesurf #{version}", shell_output("#{bin}/kitesurf --version")
    assert_match "kitty (default) or ansi (for any terminal)", shell_output("#{bin}/kitesurf --help")
    assert_match "Maximum scene frames per second", shell_output("#{bin}/kitesurf -h")
    assert_match "KITESURF_API_TOKEN", shell_output("#{bin}/kitesurf login --help")
    assert_match "--mode requires a value", shell_output("#{bin}/kitesurf --mode 2>&1", 2)
    assert_match "invalid fps (expected 1-60)", shell_output("#{bin}/kitesurf --fps 0 2>&1", 2)
  end
end
