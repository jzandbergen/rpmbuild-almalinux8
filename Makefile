image:
	podman build . -t ghcr.io/jzandbergen/rpmbuild-almalinux8

rpmbuilddir:
	mkdir -v rpmbuild
	mkdir -v rpmbuild/BUILD
	mkdir -v rpmbuild/BUILDROOT
	mkdir -v rpmbuild/RPMS
	mkdir -v rpmbuild/SOURCES
	mkdir -v rpmbuild/SPECS
	mkdir -v rpmbuild/SRPMS
	mkdir -v rpmbuild/tmp
	chmod -Rv 777 rpmbuild
