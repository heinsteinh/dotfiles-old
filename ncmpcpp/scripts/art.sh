#!/bin/bash

#put this file to ~/.ncmpcpp/

ORG_COVER="/tmp/spotify.jpeg"
RSZ_COVER="/tmp/cover.jpg"
ENDPOINT="https://api.spotify.com"

function reset_background
{
	printf "\e]20;;100x100+1000+1000\a"
}

function print_album_art
{
	track="$(mpc --format %file% current)"
	python2 ~/.config/mopidy/scripts/get_cover.py $track 2> /dev/null


	if [[ -n "$ORG_COVER" ]]
	then
		# resize the image's width to 300px
		convert "$ORG_COVER" -resize 300x "$RSZ_COVER"
		if [[ -f "$RSZ_COVER" ]] ; then
			#scale down the cover to 30% of the original
			printf "\e]20;${RSZ_COVER};100x100+50+50\a"
		else
			reset_background
		fi
	else
		reset_background
	fi
	rm -f "$RSZ_COVER"
	rm -f "$ORG_COVER"
}

(
	flock -x -w 5 200 || exit 1
	print_album_art

) 200>/tmp/lock/.art.exclusivelock
