#!/bin/sh

set -x
set -e

sudo apt-get -y update
sudo apt-get -y install \
  apt-utils \
  binutils \
  build-essential \
  curl \
  wget \
  unzip \
  gcc-multilib \
  g++-multilib \
  make \
  zsh

sudo apt-get -y install gcc g++ libc6-dev
sudo apt-get -y install gcc-i686-linux-gnu g++-i686-linux-gnu
sudo apt-get -y install gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf
sudo apt-get -y install gcc-aarch64-linux-gnu g++-aarch64-linux-gnu
sudo apt-get -y install lld

mkdir -p ~/opt && cd ~/opt
wget https://dl.google.com/android/repository/android-ndk-r25b-linux.zip &&
  unzip -q android-ndk-r25b-linux.zip &&
  mv android-ndk-r25b ndk-r25b &&
  rm android-ndk-r25b-linux.zip
