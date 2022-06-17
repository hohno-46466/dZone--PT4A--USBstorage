#!/bin/sh
#for x in 1 2 3 4 5 6 7 8; do umount /mnt/usb$x; done
for x in 1 2 3 4 5 ; do umount /mnt/usb$x; done
mount
