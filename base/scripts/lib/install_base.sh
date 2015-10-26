#!/bin/bash
set -e
apt-get update -y
apt-get upgrade -y
apt-get install -y \
	build-essential \
	bzip2 \
	curl \
	git \
	locales \
	procps \
	python

locale-gen en_US.UTF-8
echo en_US.UTF-8 UTF-8 > /etc/locale.gen
dpkg-reconfigure -f=noninteractive locales