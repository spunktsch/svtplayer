DISTCHECK_CONFIGURE_FLAGS=--enable-gtk-doc

SUBDIRS = \
	gst-libs gst sys ext pkgconfig \
	m4 common docs tests po tools

DIST_SUBDIRS = \
	gst gst-libs sys ext pkgconfig \
	m4 common docs tests po tools

# include before EXTRA_DIST for win32 assignment
include $(top_srcdir)/common/win32.mak

EXTRA_DIST = \
	gst-plugins-bad.spec depcomp \
	AUTHORS COPYING NEWS README RELEASE REQUIREMENTS \
	ChangeLog gst-plugins-bad.doap autogen.sh \
	$(win32)

DISTCLEANFILES = _stdint.h

ACLOCAL_AMFLAGS = -I m4 -I common/m4

include $(top_srcdir)/common/release.mak
include $(top_srcdir)/common/po.mak

check-valgrind:
	cd tests/check && make check-valgrind

if HAVE_GST_CHECK
check-torture:
	cd tests/check && make torture
else
check-torture:
	true
endif

include $(top_srcdir)/common/coverage/lcov.mak


# cruft: plugins that have been merged or moved or renamed

CRUFT_FILES = \
	$(top_builddir)/common/shave \
	$(top_builddir)/common/shave-libtool \
	$(top_builddir)/gst/aacparse/.libs/*.{so,dll,DLL,dylib} \
	$(top_builddir)/gst/amrparse/.libs/*.{so,dll,DLL,dylib} \
	$(top_builddir)/gst/flacparse/.libs/*.{so,dll,DLL,dylib} \
	$(top_builddir)/gst/shapewipe/.libs/*.{so,dll,DLL,dylib} \
	$(top_builddir)/ext/ivorbis/.libs/*.{so,dll,DLL,dylib} \
	$(top_builddir)/gst/imagefreeze/.libs/*.{so,dll,DLL,dylib} \
	$(top_builddir)/sys/oss4/.libs/*.{so,dll,DLL,dylib} \
	$(top_builddir)/tests/check/elements/capssetter \
	$(top_builddir)/tests/check/elements/imagefreeze \
	$(top_builddir)/tests/icles/test-oss4

CRUFT_DIRS = \
	$(top_srcdir)/gst/aacparse \
	$(top_srcdir)/gst/amrparse \
	$(top_srcdir)/gst/flacparse \
	$(top_srcdir)/gst/imagefreeze \
	$(top_srcdir)/gst/shapewipe \
	$(top_srcdir)/tests/examples/shapewipe
	$(top_srcdir)/ext/ivorbis

include $(top_srcdir)/common/cruft.mak

all-local: check-cruft
