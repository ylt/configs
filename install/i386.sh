#!/bin/bash

if ! dpkg --print-foreign-architectures | grep --quiet i386; then
	sudo dpkg --add-architecture i386
	sudo apt-get update
fi
