#!/bin/bash

# Required packages needed for compilation
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
exit 0
