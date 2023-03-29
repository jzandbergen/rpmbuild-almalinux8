#!/bin/bash

SPEC=$1
# second argument or default current workdirectory.
RPMBUILDROOT=${2:-${PWD}/rpmbuild}

RUNTIME="podman"

if [ "$1" == "" ]; then
    echo "Usage: build.sh specfile.spec"
    exit 1;
else
    echo ">>> BUILDROOT= $RPMBUILDROOT"
    ${RUNTIME} run \
        --name rpmbuild-almalinux8 \
        -v $RPMBUILDROOT:/home/rpmbuilder/rpmbuild \
        --rm=true \
        ghcr.io/jzandbergen/rpmbuild-almalinux8 \
        /bin/build-spec /home/rpmbuilder/rpmbuild/SPECS/$SPEC

    exit $?
fi

