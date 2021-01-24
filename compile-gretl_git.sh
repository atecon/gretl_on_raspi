#!/bin/bash

DIR_GIT="/git"
DIR_GRETL="$DIR_GRETL"

# Should not be needed
#export MPILINK="-L/usr/lib/x86_64-linux-gnu/openmpi/lib -lmpi"


cd ~/$DIR_GIT/$DIR_GRETL || exit 1

git pull
make clean

./configure \
	--enable-build-addons \
	--with-odbc \
	--enable-quiet-build \
	--with-mpi-lib=/usr/lib/x86_64-linux-gnu/openmpi/lib \
	# --enable-build-doc \
	#--with-mpi-include=/usr/lib/x86_64-linux-gnu/openmpi/include \
	#--with-ODBC-prefix=/usr/lib/x86_64-linux-gnu/odbc \

make -j"$(nproc)"
sudo make install
if [ "$?" -ne 0 ] ]
then
     printf "Failed to install gretl.\\n"
     exit 1
else
	make clean
	sudo ldconfig

	echo "################################################################"
	echo "##################  Mmhhh, you've got a freshly   ##############"
	echo "##################  compiled gretl version...	##############"
	echo "################################################################"
	exit 0
fi
