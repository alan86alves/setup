#!/bin/bash

apt-get -y install build-essential m4 libncurses5-dev libssh-dev unixodbc-dev libgmp3-dev libwxgtk2.8-dev libglu1-mesa-dev fop xsltproc default-jdk
apt-get -y install make
apt-get -y install libncurses5-dev
mkdir -p /src/erlang
cd /src/erlang
wget http://www.erlang.org/download/otp_src_20.0.tar.gz
tar -xvzf otp_src_20.0.tar.gz
chmod -R 777 otp_src_20.0
cd otp_src_20.0
./configure
make
make install
