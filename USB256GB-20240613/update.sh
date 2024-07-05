#!/bin/sh

error_exit() {
  echo "$2"
  exit $1
}

TARGET="USB256GB-20240613"

REPDIR=".workspace"
SRCDIR="./${TARGET}"  # Caution: This must NOT be end with "/"
DSTDIR="../${TARGET}" # Caution: This must NOT be end with "/"

if [ -d ../.git ]; then
  error_exit 9 "Error: This can NOT work in this directory."
  # *** not reachecd ***
fi

if [ ! -d $REPDIR ]; then mkdir $REPDIR fi
if [ ! -d $REPDIR ]; then
  error_exit 1 "Error: There is no such repository ($REPDIR)."
  # *** not reachecd ***
fi

if [ ! -d $REPDIR/$SRCDIR ]; then
  error_exit 1 "Error: There is no such source directory in the repository ($SRCDIR)."
  # *** not reachecd ***
fi

if [ ! -d $DSTDIR ]; then
  error_exit 1 "Error: There is no such target directory ($DSTDIR)."
  # *** not reachecd ***
fi

cd $REPDIR
git pull || error_exit 2 "git pull failed."

rsync -av --ignore-existing ${SRCDIR}/ ${DSTDIR}/ || error_exit 3 "rsync failed."

exit $?

