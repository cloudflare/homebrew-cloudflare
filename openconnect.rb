class Openconnect < Formula
  desc "Open client for Cisco AnyConnect VPN"
  homepage "http://www.infradead.org/openconnect.html"
  url "ftp://ftp.infradead.org/pub/openconnect/openconnect-7.06.tar.gz"
  mirror "https://mirrors.ocf.berkeley.edu/debian/pool/main/o/openconnect/openconnect_7.06.orig.tar.gz"
  sha256 "facf695368dc4537a6a30e2147be90b1d77ee3cb2d269eaef070b6d9ddab70f2"
  revision 1

  head do
    url "git://git.infradead.org/users/dwmw2/openconnect.git", :shallow => false
    depends_on "autoconf" => :build
    depends_on "automake" => :build
    depends_on "libtool" => :build
  end

  # No longer compiles against OpenSSL 1.0.2 - It chooses the system OpenSSL instead.
  # https://lists.infradead.org/pipermail/openconnect-devel/2015-February/002757.html

  depends_on "pkg-config" => :build
  depends_on "gettext"
  depends_on "gnutls"
  depends_on "oath-toolkit" => :optional
  depends_on "stoken" => :optional

  resource "vpnc-script" do
    url "https://raw.githubusercontent.com/cloudflare/vpnc-scripts/rebuid-routes/vpnc-script"
    sha256 "682d4177b12641a1167b48469e21f3cfb1b14659e824f18ce048ec4f3103fea3"
  end
  
  patch :DATA

  def install
    etc.install resource("vpnc-script")
    chmod 0755, "#{etc}/vpnc-script"

    if build.head?
      ENV["LIBTOOLIZE"] = "glibtoolize"
      system "./autogen.sh"
    end

    args = %W[
      --prefix=#{prefix}
      --sbindir=#{bin}
      --localstatedir=#{var}
      --with-vpnc-script=#{etc}/vpnc-script
    ]

    system "./configure", *args
    system "make", "install"
  end

  test do
    assert_match /AnyConnect VPN/, pipe_output("#{bin}/openconnect 2>&1")
  end
end

__END__
commit 145f2414a7e970d0710c5b4e3e1d771e931e5ce6
Author: Alexander Huynh <alex@frothy.coffee>
Date:   Wed Nov 11 12:33:13 2015 -0800

    Actually call vpnc-script to reconnect
    
    Signed-off-by: Alexander Huynh <alex@frothy.coffee>

diff --git a/ssl.c b/ssl.c
index 30a2494..32524f3 100644
--- a/ssl.c
+++ b/ssl.c
@@ -991,7 +991,7 @@ int ssl_reconnect(struct openconnect_info *vpninfo)
 	free(vpninfo->tun_pkt);
 	vpninfo->tun_pkt = NULL;
 
-	while ((ret = vpninfo->proto.tcp_connect(vpninfo))) {
+	while ((script_config_tun(vpninfo, "reconnect"), ret = vpninfo->proto.tcp_connect(vpninfo))) {
 		if (timeout <= 0)
 			return ret;
 		if (ret == -EPERM) {
@@ -1012,6 +1012,5 @@ int ssl_reconnect(struct openconnect_info *vpninfo)
 		if (interval > RECONNECT_INTERVAL_MAX)
 			interval = RECONNECT_INTERVAL_MAX;
 	}
-	script_config_tun(vpninfo, "reconnect");
 	return 0;
 }
