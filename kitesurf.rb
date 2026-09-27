class Kitesurf < Formula
  desc "Interactive terminal browser for the web"
  homepage "https://kitesurf.dev"
  url "file://#{__dir__}/kitesurf.zig"
  version "0.1.1"
  sha256 "8dc4621088df5fb4e9fef04a1b458caa4682ccbc22a580334c9c3623cbc53eb5"

  depends_on "zig" => :build
  depends_on "homebrew/core/curl"

  def install
    curl = Formula["homebrew/core/curl"]
    system "zig", "build-exe", "kitesurf.zig",
           "-O", "ReleaseSafe",
           "-lc", "-lcurl",
           "-I#{curl.opt_include}", "-L#{curl.opt_lib}",
           "-femit-bin=kitesurf"
    bin.install "kitesurf"
  end

  def caveats
    <<~EOS
      Kitesurf uses the open playground at https://kitesurf.dev/.
      The playground is rate-limited; please do not abuse it.
    EOS
  end

  test do
    assert_match "kitty        Default when supported", shell_output("#{bin}/kitesurf --help")
    assert_match "ansi         Selectable terminal text", shell_output("#{bin}/kitesurf -h")
    assert_match "The playground is rate-limited; please do not abuse it.", shell_output("#{bin}/kitesurf --help")
    assert_match "Try 'kitesurf --help'", shell_output("#{bin}/kitesurf -m 2>&1", 2)
  end
end
