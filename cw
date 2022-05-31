#!/bin/bash

# author	luca-lc
# brief		downloads an image from unsplash, using the passed subjects as argument, and sets it as desktop wallpaper
#					example "/path/to/cw summer,tropical,beach,water,sunset"

__DIRPATH=/tmp/bg #working directory
__FILE=""  #wallpaper name
stop=false

# create a name for the new file
function getFilename()
	{
		r=RANDOM%10
		__FILE=$__DIRPATH/wallpaper$((r)).jpg
	}

# delete old wallpapers
function deleteOldWallpaper()
	{
		for file in $__DIRPATH/*
			do
				if [[ $file != $__FILE ]]
					then
						rm $file
					fi
				done			
	}

# set the wallpaper
function setupwp()
	{
		#check if a directory exists
		if [[ ! -d $__DIRPATH ]]
			then
				mkdir $__DIRPATH
			fi

		#create a numbered random path
		getFilename
		while [ -f $__FILE ]
			do
				getFilename
			done


		#download image
		wget -q https://source.unsplash.com/3840x2160/?$1 -O $__FILE


		#delete the old wallpapers
		if [[ -f $__FILE ]]
			then 
				deleteOldWallpaper
			fi

		#wait 1 second
		# sleep 1

		#set new wallpaper
		gsettings set org.gnome.desktop.background picture-uri "file:///$__FILE"
	}



#check if the system is online before run the API
while [ true ];
	do
		nc -z 8.8.8.8 53 >/dev/null 2>&1
		online=$?
		if [ $online -eq 0 ]
			then
				setupwp $1
				exit
			fi
	done
