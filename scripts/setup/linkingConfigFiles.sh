#!/bin/bash


FILE_PATH="./../../dotFiles/.*"


setupLinks(){
	for i in $FILE_PATH; do
		if [[ -f $i ]]; then
			echo $i | grep -E ".[a-z]+rc$" > file.txt 
		fi
	done
}


setupLinks
