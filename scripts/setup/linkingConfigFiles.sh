#!/bin/bash

FILE_PATH="./../../dotFiles/.*"

setupLinks(){
	for i in $FILE_PATH; do
		if [[ -f $i ]]; then
			var=$(basename $i) 

			# delte file if it already exists 
			if [[ -e ~/$var ]]; then
				rm ~/$var	
			elif [[ -h ~/$var ]]; then
				unlink ~/$var
			fi

			# Link the files
			ln -s $PWD/$var ~/$var
		fi
	done
}


setupLinks
