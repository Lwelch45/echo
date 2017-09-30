#! /bin/bash
rm build -rf
/usr/local/bin/python3 ./configure.py  --disable-xen --mode release 
ninja -j64
