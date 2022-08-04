#!/bin/sh

cd $HOME/GitHub/dZone--PT4A--USBstorage/USB256GB-20220612 || exit 99

tar --exclude="kemotw*.pdf" --exclude=".dummy4github" -cf - . | ( cd /mnt/s; tar xmf - ); diff -r -w -q . /mnt/s  2>&1 | grep  '^Only' | egrep -v '/Tokyo2020/|/amedas/' | cat -n

# for x in 1 2 3 4 5 6 7 8; do date; echo $x; tar --exclude="kemotw*.pdf" --exclude=".dummy4github" -cf - . | ( cd /mnt/usb$x; tar xmf - ); diff -r -w -q . /mnt/usb$x  2>&1 | grep  '^Only' | egrep -v '/Tokyo2020/|/amedas/' | cat -n; echo; echo; done; date
