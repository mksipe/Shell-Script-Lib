.PHONY: all clean-package clean clean-all build help

VERSION=4.5.7
GRSEC_RELEASE=3.1-${VERSION}-201606202152
PATCHES=
N_CORES=`cat /proc/cpuinfo | grep 'core id' | sort | uniq | wc -l`

PKGNAME=linux-grsecurity
PKGREV=1
PKGSTAGING=${PKGNAME}_${VERSION}-${PKGREV}

all: ${PKGSTAGING}.deb

${PKGSTAGING}.deb: | ${PKGSTAGING}
	dpkg-deb --build ${PKGSTAGING}
	lintian $@

${PKGSTAGING}: linux-${VERSION}/arch/x86_64/boot/bzImage
	rm -rf $@
	mkdir $@
	mkdir $@/boot $@/usr
	cp -R DEBIAN $@/
	for f in control preinst postinst prerm postrm; do \
	     sed "s/{{VERSION}}/${VERSION}/" -i "$@/DEBIAN/$$f"; done
	for f in control preinst postinst prerm postrm; do \
	     sed "s/{{PKGREV}}/${PKGREV}/" -i "$@/DEBIAN/$$f"; done

	install -m644 linux-${VERSION}/arch/x86_64/boot/bzImage $@/boot/vmlinuz-${VERSION}-grsec
	cd linux-${VERSION} && make modules_install INSTALL_MOD_PATH=../$@
	cd linux-${VERSION} && make headers_install INSTALL_HDR_PATH=../$@/usr
	depmod -b $@ ${VERSION}-grsec
	rm $@/lib/modules/${VERSION}-grsec/build
	install -m644 config $@/boot/config-${VERSION}-${PKGREV}
	install -Dm644 copyright $@/usr/share/doc/${PKGNAME}/copyright
	gzip -n9 changelog -c > $@/usr/share/doc/${PKGNAME}/changelog.Debian.gz

	# This is best obtained from the ordinary firmware packages
	rm -rf $@/lib/firmware

	# Fix permissions
	find ./$@/lib -type f -exec chmod 644 {} \;
	find ./$@/usr -type f -exec chmod 644 {} \;
	find ./$@ -type d -exec chmod 755 {} \;
	find ./$@/DEBIAN -type f -executable -exec chmod 755 {} \;
	find ./$@/DEBIAN -type f -perm 664 -exec chmod 644 {} \;
	chmod 600 ./$@/boot/vmlinuz-${VERSION}-grsec

linux-${VERSION}/arch/x86_64/boot/bzImage: | linux-${VERSION}
	cd linux-${VERSION} && make -j${N_CORES}
	touch $@

linux-${VERSION}: linux-${VERSION}.tar grsecurity-${GRSEC_RELEASE}.patch
	rm -rf $@
	tar -xf linux-${VERSION}.tar
	cd $@ && patch -p1 -i ../grsecurity-${GRSEC_RELEASE}.patch && for patch in ${PATCHES}; do patch -p1 -i ../patches/$$patch; done
	cp config $@/.config

linux-${VERSION}.tar: linux-${VERSION}.tar.xz linux-${VERSION}.tar.sign
	xz -kdf linux-${VERSION}.tar.xz
	touch $@
	gpg --verify linux-${VERSION}.tar.sign linux-${VERSION}.tar || rm -f $@

linux-${VERSION}.tar.sign:
	curl -OL https://cdn.kernel.org/pub/linux/kernel/v4.x/$@

linux-${VERSION}.tar.xz:
	curl -OL https://cdn.kernel.org/pub/linux/kernel/v4.x/$@

grsecurity-${GRSEC_RELEASE}.patch: grsecurity-${GRSEC_RELEASE}.patch.sig
	curl -OL http://grsecurity.net/test/$@
	gpg --verify $@.sig $@ || rm -f $@

grsecurity-${GRSEC_RELEASE}.patch.sig:
	curl -OL http://grsecurity.net/test/$@

clean-package:
	rm -rf ${PKGSTAGING} ${PKGSTAGING}.deb

clean: clean-package
	rm -rf linux-${VERSION}

clean-all: clean
	rm -rf linux-${VERSION}.tar \
               linux-${VERSION}.tar.sign \
               linux-${VERSION}.tar.xz \
               grsecurity-${GRSEC_RELEASE}.patch \
               grsecurity-${GRSEC_RELEASE}.patch.sig

help:
	@echo "Build Targets"
	@echo "  all                      - Build the package ${PKGSTAGING}.deb"
	@echo "  ${PKGSTAGING} - Extract, patch, compile, and create install directory"
	@echo "  linux-${VERSION}              - Just extract the source archive and apply patches"
	@echo
	@echo "Clean Targets"
	@echo "  clean-package            - Remove only the package and install directory"
	@echo "  clean                    - Remove the above, as well as the source directory"
	@echo "  clean-all                - Purge all artifacts"
