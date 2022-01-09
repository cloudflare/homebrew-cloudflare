#
# Homebrew Formula for curl + quiche
#
# brew install -s <url of curl.rb>
#
# You can add --HEAD if you want to build curl from git master
#
# For more information, see https://developers.cloudflare.com/http3/intro/curl-brew/
#
class Curl < Formula
  desc "Get a file from an HTTP, HTTPS or FTP server w/http3 support using quiche"
  homepage "https://curl.haxx.se/"
  url "https://curl.haxx.se/download/curl-7.71.1.tar.bz2"
  sha256 "9d52a4d80554f9b0d460ea2be5d7be99897a1a9f681ffafe739169afd6b4f224"

  head do
    url "https://github.com/curl/curl.git"

    depends_on "autoconf" => :build
    depends_on "automake" => :build
    depends_on "libtool" => :build
  end

  keg_only :provided_by_macos

  depends_on "pkg-config" => :build
  uses_from_macos "openssl"

  depends_on "rust" => ["1.39.0", :build]
  depends_on "cmake" => :build

  # http2
  depends_on "nghttp2" => :build

  def install
    # Instructions from https://github.com/curl/curl/blob/master/docs/HTTP3.md
    pwd = Pathname.pwd

    system "./buildconf" if build.head?

    # build boringssl
    system "git", "clone", "--recursive", "https://github.com/cloudflare/quiche"

    # build quiche
    cd "quiche" do
      # Build static libs only
      inreplace "quiche/Cargo.toml", /^crate-type = .*/, "crate-type = [\"staticlib\"]"

      system "cargo", "build",
                      "--package quiche",
                      "--release",
                      "--features=ffi,pkg-config-meta,qlog"

      mkdir_p "quiche/deps/boringssl/src/lib"
      cp Dir.glob("target/release/build/*/out/build/libcrypto.a"), "quiche/deps/boringssl/src/lib"
      cp Dir.glob("target/release/build/*/out/build/libssl.a"), "quiche/deps/boringssl/src/lib"
    end

    args = %W[
      --disable-debug
      --disable-dependency-tracking
      --disable-silent-rules
      --prefix=#{prefix}
      --with-secure-transport
      --without-ca-bundle
      --without-ca-path
      --with-ssl=#{pwd}/quiche/quiche/deps/boringssl/src
      --with-quiche=#{pwd}/quiche/target/release
      --enable-alt-svc
    ]

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
