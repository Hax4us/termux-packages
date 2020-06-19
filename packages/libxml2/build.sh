TERMUX_PKG_HOMEPAGE=http://www.xmlsoft.org
TERMUX_PKG_DESCRIPTION="Library for parsing XML documents"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_VERSION=2.9.10
TERMUX_PKG_REVISION=3
TERMUX_PKG_SRCURL=ftp://xmlsoft.org/libxml2/libxml2-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=aafee193ffb8fe0c82d4afef6ef91972cbaf5feea100edc2f262750611b4be1f
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--without-python"
TERMUX_PKG_RM_AFTER_INSTALL="share/gtk-doc"
TERMUX_PKG_DEPENDS="libiconv, liblzma, zlib"
TERMUX_PKG_BREAKS="libxml2-dev"
TERMUX_PKG_REPLACES="libxml2-dev"

termux_step_post_make_install() {   
	ln -sf "${TERMUX_PREFIX}/include/libxml2/libxml" "${TERMUX_PREFIX}/include/libxml"
}
