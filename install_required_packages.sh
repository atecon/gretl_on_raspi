#!/bin/bash

# Required packages needed for compilation

DIR_GIT="/git"
DIR_GRETL="$DIR_GRETL"

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
	gcc-doc \
	libc6-dev \
	libc-dev \
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
cd ~/$DIR_GIT || exit 1
git clone git://git.code.sf.net/p/gretl/git $DIR_GRETL

echo "Cloned repo to ~/$PATH_TO_GIT"

exit 0
