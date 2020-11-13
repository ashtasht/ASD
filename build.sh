#!/bin/sh

rm -r $SYSROOT

cp -r sysroot_basic ${SYSROOT}

for p in src/*; do
	cd $p
	make
	make install
done
