#!/bin/bash 

## Variables
PROGRAM_FILE_DIR=$(dirname $(dirname $(dirname $(realpath $0))))/configFiles/*
declare basic_programs
declare opt_programs

## Functions
install(){
	if [[ -n $(which $1) ]]; then
		echo $1 " is already in the program is in the path"
	else
		sudo apt-get install -y $1 	
	fi	
}

setup_program_array(){
	if [[ -e $1 ]];then
		mapfile -t basic_programs < $1
	else 
		echo "File does not exist"
	fi
}

install_selected_programs(){
	for i in ${basic_programs[@]}; do
		install $i
	done
}


basic_setup(){
	# Populate the array
	setup_program_array $PROGRAM_FILE_DIR 
	install_selected_programs
	#installation_from_config_file ${CONFIG_FILES}/basicPrograms
}

## Main Script
basic_setup



