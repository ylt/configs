#!/bin/bash

#https://wiki.debian.org/skype

dpkg --add-architecture i386
apt-get update

wget -O skype-install.deb http://www.skype.com/go/getskype-linux-deb

dpkg -i skype-install.deb
apt-get install -f -y #install dependencies
apt-get install -y libpulse0:i386

rm skype-install.deb
