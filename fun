#!/bin/sh

case $# in
1) sed -n /function.$1/,/}/p *; sed -n /proc.$1/,/}/p *; sed -n /sub.$1/,/}/p *;
;;
2) sed -n /function.$1/,/}/p $2; sed -n /proc.$1/,/}/p $2; sed -n /sub.$1/,/}/p $2;
;;
*) echo "usage: fun fctname [filename]?"
   exit 1
;;
esac
exit 0
