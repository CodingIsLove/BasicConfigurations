#!/bin/bash

HOME_DIR=$(dirname $(dirname $(dirname $(realpath $0))))/dotFiles

setupLinks(){
	for i in $HOME_DIR/.*; do
		if [[ -f $i ]] || [[ -d $i ]]; then
			var=$(basename $i) 

			if [[ ! "$var" =~ \.$ ]]; then
				# delte file/director/link if it already exists 
				if [[ -e ~/$var ]]; then
					rm ~/$var	
				elif [[ -h ~/$var ]]; then
					unlink ~/$var
				elif [[ -d ~/$var ]]; then
					rm -r ~/$var
				fi
			# Link the files
			ln -s $HOME_DIR/$var ~/$var
			fi
		fi
	done
}


# Execute the code
setupLinks
#echo "All config files are linked now"

