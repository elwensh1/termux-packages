TERMUX_PKG_HOMEPAGE=https://libmatekbd.mate-desktop.dev/
TERMUX_PKG_DESCRIPTION="libmatekbd is a fork of libgnomekbd"
TERMUX_PKG_LICENSE="LGPL-2.1"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=1.26.0
TERMUX_PKG_REVISION=1
TERMUX_PKG_SRCURL=https://github.com/mate-desktop/libmatekbd/releases/download/v$TERMUX_PKG_VERSION/libmatekbd-$TERMUX_PKG_VERSION.tar.xz
TERMUX_PKG_SHA256=220ee8cab0cbc5f42ca6b621bcd009b0b736507945a2aedbffe2235fa1d811ad
TERMUX_PKG_DEPENDS="atk, gdk-pixbuf, glib, gtk3, harfbuzz, libcairo, libx11, libxklavier, pango"
TERMUX_PKG_BUILD_DEPENDS="g-ir-scanner"
TERMUX_PKG_DISABLE_GIR=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
LIBXKLAVIER=${TERMUX_PREFIX}/lib/libxklavier.so
--enable-introspection=yes
"

termux_step_pre_configure() {
	termux_setup_gir

	export GLIB_COMPILE_RESOURCES="glib-compile-resources"
	export GLIB_COMPILE_SCHEMAS="glib-compile-schemas"
}
