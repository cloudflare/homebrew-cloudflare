class Kitesurf < Formula
  desc "Interactive terminal browser for the web"
  homepage "https://kitesurf.dev"
  url "file://#{__dir__}/kitesurf.zig"
  version "0.1.0"
  sha256 "cca90ed30d70eb3f1b4179b69487889691e906fca5e633427cce4f6a9187b4db"

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
