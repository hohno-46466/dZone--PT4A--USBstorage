#!/bin/sh

DRV=${1:-"H:"}
USB=${2:-"usb"}
TARGZFILE=${3:-"$HOME/Desktop/USB256GB-20220806.tar.gz"}


exit_with_error () {
	_ret=$1;
	shift
	_message="$@"
	echo "Error: $_message"
	exit $_ret
}

echo "[$USB] [$DRV] [$TARGZFILE]"

(mount | grep -q -i $DRV) && exit_with_error 9 "$DRV is busy"

echo "sudo mount -t drvfs $DRV /mnt/$USB"
sudo mount -t drvfs $DRV /mnt/$USB || exit_with_error 2 "Can't mount $DRV onto /mnt/$USB"

cd /mnt/$USB || exit_with_error 3 "Can't chdir /mnt/$USB"

[ -f $TARGZFILE ] || exit_with_error 4 "Can't open $TARGZFILE"

echo "sudo tar -zxpf $TARGZFILE  # <-- this takes a minute"
sleep 1
sudo tar -zxpf $TARGZFILE
echo "done. "
echo "Ignore the utime related error above."
echo ""

echo -n "finalizing... "
find . -name .dummy4github -exec rm {} \;
echo "done"
echo ""

exit 0
