#!/bin/bash

# Required packages needed for compilation

DIR_GIT="git"
DIR_GRETL="gretl-git"

sudo apt update -qq && apt install -y --no-install-recommends \
	gcc \
	autoconf \
	automake \
	cmake \
	apt-utils \
	build-essential \
	libtool \
	flex \
	bison \
	libc6-dev \
	gfortran \
	gettext \
	libglib2.0-dev \
	libgtk3-perl \
	libgfs-dev \
	libpng-dev \
	libxslt1-dev \
	liblapack-dev \
	libfftw3-dev \
	libreadline-dev \
	zlib1g-dev \
	libbz2-dev \
	libxml2-dev \
	libgmp-dev \
	libcurl4-gnutls-dev \
	libmpfr-dev \
	git \
	gnuplot \
	imagemagick \
	libjson-glib-1.0-0 \
	libjson-glib-dev \
	openmpi-bin \
	openmpi-common \
	ca-certificates \
	libgtk-3-dev \
	libgtksourceview-3.0-dev

echo "Installed all required packages"

# clone Gretl repo
mkdir -p ~/$DIR_GIT
echo "Created directory: $(pwd)"

cd ~/$DIR_GIT || exit 1
echo "Switched to directory: $(pwd)"

git clone git://git.code.sf.net/p/gretl/git $DIR_GRETL
echo "Cloned repo to ~/$DIR_GIT/$DIR_GRETL"

exit 0
