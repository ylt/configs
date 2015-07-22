#!/bin/bash

DATA="$(curl 'https://plex.tv/downloads')"

if [[ "$DATA" =~ \"(https://[^\"]*?_amd64\.deb)\" ]]; then
	URL="${BASH_REMATCH[1]}"
	wget "$URL" -O plex.deb
	sudo dpkg -i plex.deb
	rm plex.deb
fi
