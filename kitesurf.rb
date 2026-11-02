class Kitesurf < Formula
  desc "Interactive terminal browser for the web"
  homepage "https://kitesurf.dev"
  url "file://#{__dir__}/src/kitesurf-cli.tar.gz"
  version "0.0.5"
  sha256 "e747a8b897b4d676ab378bbf01046eef21992d46d7fa73032aba82e31e9f3d73"
  license "Apache-2.0"

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
      Use --playground to connect to the open playground at https://kitesurf.dev/.
      The playground is rate-limited; please do not abuse it.
    EOS
  end

  test do
    assert_match "kitty (default) or ansi (for any terminal)", shell_output("#{bin}/kitesurf --help")
    assert_match "Maximum scene frames per second", shell_output("#{bin}/kitesurf -h")
    assert_match "--mode requires a value", shell_output("#{bin}/kitesurf --mode 2>&1", 2)
    assert_match "invalid fps (expected 1-60)", shell_output("#{bin}/kitesurf --fps 0 2>&1", 2)
  end
end
