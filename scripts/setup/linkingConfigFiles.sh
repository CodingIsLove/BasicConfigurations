#!/bin/bash

FILE_PATH="./../../dotFiles"
HOME_CONFIG_FILES="/Documents/GitRepos/BasicConfigurations/dotFiles"


setupLinks(){
	for i in $FILE_PATH/.*; do
		if [[ -f $i ]]; then
			var=$(basename $i) 

			# delte file if it already exists 
			if [[ -e ~/$var ]]; then
				rm ~/$var	
			elif [[ -h ~/$var ]]; then
				unlink ~/$var
			fi

			# Link the files
			ln -s ~/$HOME_CONFIG_FILES/$var ~/$var
		fi
	done
}


# Execute the code
setupLinks
