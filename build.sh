#!/bin/sh
for p in src/*; do
	cd $p
	make
	make install
done
