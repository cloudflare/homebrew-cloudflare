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
  url "https://curl.haxx.se/download/curl-7.67.0.tar.bz2"
  sha256 "dd5f6956821a548bf4b44f067a530ce9445cc8094fd3e7e3fc7854815858586c"

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
  depends_on "go" => :build

  # http2
  depends_on "nghttp2" => :build

  def install
    pwd = Pathname.pwd

    system "./buildconf" if build.head?

    # build boringssl
    system "git", "clone", "--recursive", "https://github.com/cloudflare/quiche"
    mkdir_p "quiche/deps/boringssl/build" 
    cd "quiche/deps/boringssl/build" do
      system "cmake", "-DCMAKE_POSITION_INDEPENDENT_CODE=on", ".." 
      system "make"
    end
    cd "quiche/deps/boringssl" do
      mkdir_p ".openssl/lib" 
      cp "build/crypto/libcrypto.a", ".openssl/lib"
      cp "build/ssl/libssl.a", ".openssl/lib"
      ln_s Pathname.pwd/"include", ".openssl"
    end

    # build quiche
    cd "quiche" do
      # Build static libs only
      system "perl", "-pi",
                     "-e", "s@^crate-type = .*@crate-type = [\"staticlib\"]@",
                     "Cargo.toml"

      ENV["QUICHE_BSSL_PATH"] = pwd/"quiche/deps/boringssl"
      system "cargo", "build",
                      "--release",
                      "--features", "pkg-config-meta"

      # Update build flag for MacOS
      system "perl", "-pi",
                     "-e", "s@^Libs: .*@Libs: -L\\${libdir} -lquiche@",
                     "target/release/quiche.pc"
    end

    args = %W[
      --disable-debug
      --disable-dependency-tracking
      --disable-silent-rules
      --prefix=#{prefix}
      --with-secure-transport
      --without-ca-bundle
      --without-ca-path
      --with-ssl=#{pwd}/quiche/deps/boringssl/.openssl
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
