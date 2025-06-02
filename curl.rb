#
# Homebrew Formula for curl + quiche
# Based on https://github.com/Homebrew/homebrew-core/blob/master/Formula/c/curl.rb
#
# brew install -s <url of curl.rb>
#
# You can add --HEAD if you want to build curl from git master.
#
# If you don't want to be auto-upgraded by `brew upgrade`, run
# `brew pin curl`.
#
class Curl < Formula
  desc "Get a file from an HTTP, HTTPS or FTP server with HTTP/3 support using quiche"
  homepage "https://curl.se"
  # Don't forget to update both instances of the version in the GitHub mirror URL.
  # `url` goes below this comment when the `stable` block is removed.

  license "curl"

  stable do
    url "https://curl.se/download/curl-8.14.0.tar.bz2"
    mirror "https://github.com/curl/curl/releases/download/curl-8_14_0/curl-8.14.0.tar.bz2"
    mirror "http://fresh-center.net/linux/www/curl-8.14.0.tar.bz2"
    mirror "http://fresh-center.net/linux/www/legacy/curl-8.14.0.tar.bz2"
    sha256 "efa1403c5ac4490c8d50fc0cabe97710abb1bf2a456e375a56d960b20a1cba80"

    # fix https://github.com/curl/curl/issues/17473
    # curl_multi_add_handle() returning OOM when using more than 400 handles
    patch do
      url "https://github.com/curl/curl/commit/d16ccbd55de80c271fe822f4ba8b6271fd9166ff.patch?full_index=1"
      sha256 "d30d4336e2422bedba66600b4c05a3bed7f9c51c1163b75d9ee8a27424104745"
    end
  end

  livecheck do
    url "https://curl.se/download/"
    regex(/href=.*?curl[._-]v?(.*?)\.t/i)
  end

  head do
    url "https://github.com/curl/curl.git", branch: "master"

    depends_on "autoconf" => :build
    depends_on "automake" => :build
    depends_on "libtool" => :build
  end

  keg_only :provided_by_macos

  depends_on "cmake" => :build
  depends_on "rust" => :build

  depends_on "pkgconf" => [:build, :test]
  depends_on "brotli"
  depends_on "libnghttp2"
  depends_on "libssh2"
  depends_on "rtmpdump"
  depends_on "zstd"

  uses_from_macos "krb5"
  uses_from_macos "openldap"
  uses_from_macos "zlib", since: :sierra

  on_system :linux, macos: :monterey_or_older do
    depends_on "libidn2"
  end

  resource "quiche" do
    url "https://github.com/cloudflare/quiche.git", branch: "master"
  end

  def install
    tag_name = "curl-#{version.to_s.tr(".", "_")}"
    if build.stable? && stable.mirrors.grep(/github\.com/).first.exclude?(tag_name)
      odie "Tag name #{tag_name} is not found in the GitHub mirror URL! " \
           "Please make sure the URL is correct."
    end

    # Use our `curl` formula with `wcurl`
    inreplace "scripts/wcurl", 'CMD="curl "', "CMD=\"#{opt_bin}/curl \""

    # Build with quiche:
    #  https://github.com/curl/curl/blob/master/docs/HTTP3.md#quiche-version
    quiche = buildpath/"quiche/quiche"
    resource("quiche").stage quiche.parent
    cd "quiche" do
      # Build static libs only
      inreplace "quiche/Cargo.toml", /^crate-type = .*/, "crate-type = [\"staticlib\"]"

      system "cargo", "build",
                      "--release",
                      "--package=quiche",
                      "--features=ffi,pkg-config-meta,qlog"
      (quiche/"deps/boringssl/src/lib").install Pathname.glob("target/release/build/*/out/build/lib{crypto,ssl}.a")
    end

    system "autoreconf", "--force", "--install", "--verbose" if build.head?

    args = %W[
      --disable-silent-rules
      --with-ssl=#{quiche}/deps/boringssl/src
      --without-ca-bundle
      --without-ca-path
      --with-ca-fallback
      --with-default-ssl-backend=openssl
      --with-librtmp
      --with-libssh2
      --without-libpsl
      --with-zsh-functions-dir=#{zsh_completion}
      --with-fish-functions-dir=#{fish_completion}
      --with-quiche=#{quiche.parent}/target/release
      --enable-alt-svc
    ]

    args << if OS.mac?
      "--with-gssapi"
    else
      "--with-gssapi=#{Formula["krb5"].opt_prefix}"
    end

    args += if OS.mac? && MacOS.version >= :ventura
      %w[
        --with-apple-idn
        --without-libidn2
      ]
    else
      %w[
        --without-apple-idn
        --with-libidn2
      ]
    end

    system "./configure", *args, *std_configure_args
    system "make", "install"
    system "make", "install", "-C", "scripts"
    libexec.install "scripts/mk-ca-bundle.pl"
  end

  test do
    # Fetch the curl tarball and see that the checksum matches.
    # This requires a network connection, but so does Homebrew in general.
    filename = testpath/"test.tar.gz"
    system bin/"curl", "-L", stable.url, "-o", filename
    filename.verify_checksum stable.checksum

    # Check dependencies linked correctly
    curl_features = shell_output("#{bin}/curl-config --features").split("\n")
    %w[brotli GSS-API HTTP2 HTTP3 IDN libz SSL zstd].each do |feature|
      assert_includes curl_features, feature
    end
    curl_protocols = shell_output("#{bin}/curl-config --protocols").split("\n")
    %w[LDAPS RTMP SCP SFTP].each do |protocol|
      assert_includes curl_protocols, protocol
    end

    system libexec/"mk-ca-bundle.pl", "test.pem"
    assert_path_exists testpath/"test.pem"
    assert_path_exists testpath/"certdata.txt"

    with_env(PKG_CONFIG_PATH: lib/"pkgconfig") do
      system "pkgconf", "--cflags", "libcurl"
    end
  end
end
