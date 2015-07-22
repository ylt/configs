#!/bin/bash

./i386.sh

wget "http://download.teamviewer.com/download/teamviewer_i386.deb"
dpkg -i teamviewer_i386.deb
