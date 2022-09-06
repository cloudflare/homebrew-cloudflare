#
# Homebrew Formula for curl + quiche
# Based on https://github.com/Homebrew/homebrew-core/blob/HEAD/Formula/curl.rb
#
# brew install -s <url of curl.rb>
#
# You can add --HEAD if you want to build curl from git master (recommended)
#
# For more information, see https://developers.cloudflare.com/http3/tutorials/curl-brew
#
class Curl < Formula
  desc "Get a file from an HTTP, HTTPS or FTP server with HTTP/3 support using quiche"
  homepage "https://curl.se"
  url "https://curl.se/download/curl-7.81.0.tar.bz2"
  mirror "https://github.com/curl/curl/releases/download/curl-7_80_0/curl-7.81.0.tar.bz2"
  mirror "http://fresh-center.net/linux/www/curl-7.81.0.tar.bz2"
  mirror "http://fresh-center.net/linux/www/legacy/curl-7.81.0.tar.bz2"
  sha256 "1e7a38d7018ec060f1f16df839854f0889e94e122c4cfa5d3a37c2dc56f1e258"
  license "curl"

  livecheck do
    url "https://curl.se/download/"
    regex(/href=.*?curl[._-]v?(.*?)\.t/i)
  end

  head do
    url "https://github.com/curl/curl.git"

    depends_on "autoconf" => :build
    depends_on "automake" => :build
    depends_on "libtool" => :build
  end

  keg_only :provided_by_macos

  depends_on "cmake" => :build
  depends_on "pkg-config" => :build
  depends_on "rust" => :build
  depends_on "brotli"
  depends_on "libidn2"
  depends_on "libnghttp2"
  depends_on "libssh2"
  depends_on "openldap"
  depends_on "openssl@1.1"
  depends_on "rtmpdump"
  depends_on "zstd"

  uses_from_macos "krb5"
  uses_from_macos "zlib"

  resource "quiche" do
    url "https://github.com/cloudflare/quiche.git", branch: "master"
  end

  def install
    # Build with quiche:
    #   https://github.com/curl/curl/blob/master/docs/HTTP3.md#quiche-version
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

    system "./buildconf" if build.head?

    args = %W[
      --disable-debug
      --disable-dependency-tracking
      --disable-silent-rules
      --prefix=#{prefix}
      --with-ssl=#{quiche}/deps/boringssl/src
      --with-ca-fallback
      --with-secure-transport
      --with-default-ssl-backend=openssl
      --with-libidn2
      --with-librtmp
      --with-libssh2
      --without-libpsl
      --with-quiche=#{quiche.parent}/target/release
      --enable-alt-svc
    ]

    args << if OS.mac?
      "--with-gssapi"
    else
      "--with-gssapi=#{Formula["krb5"].opt_prefix}"
    end

    system "./configure", *args
    system "make", "install"
    system "make", "install", "-C", "scripts"
    libexec.install "lib/mk-ca-bundle.pl"
  end

  test do
    # Fetch the curl tarball and see that the checksum matches.
    # This requires a network connection, but so does Homebrew in general.
    filename = (testpath/"test.tar.gz")
    system "#{bin}/curl", "-L", stable.url, "-o", filename
    filename.verify_checksum stable.checksum

    system libexec/"mk-ca-bundle.pl", "test.pem"
    assert_predicate testpath/"test.pem", :exist?
    assert_predicate testpath/"certdata.txt", :exist?
  end
end
