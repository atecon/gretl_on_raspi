#!/bin/bash

DIR_GIT="git"
DIR_GRETL="gretl-git"

cd $HOME
echo "Switched to directory: $(pwd)"

mkdir -p $DIR_GIT
echo "Created directory: $(pwd)/$DIR_GIT"

cd $DIR_GIT || exit 1
echo "Switched to directory: $(pwd)"

git clone git://git.code.sf.net/p/gretl/git $DIR_GRETL
echo "Cloned repo to $HOME/$DIR_GIT/$DIR_GRETL"

exit 0


