#!/bin/bash
search_params () {
for i in $(find . prm 2>/dev/null | grep "prm$" && find . str 2>/dev/null | grep "str$");
do
	echo $i
	if [ "$#" -eq 2 ]; 
	then
		x=$(echo $1 | grep -o ^.)
		y=$(echo $2 | grep -o ^.)
	cat $i | grep "^$x\S*\s\+$y\S*\s\+[0-9]" 
	cat $i | grep "^$y\S*\s\+$x\S*\s\+[0-9]" 
	fi
	if [ "$#" -eq 3 ]; 
	then
		x=$(echo $1 | grep -o ^.)
		y=$(echo $2 | grep -o ^.)
		z=$(echo $3 | grep -o ^.)
	cat $i | grep "^$x\S*\s\+$y\S*\s\+$z\S*\s\+[0-9]" 
	cat $i | grep "^$z\S*\s\+$y\S*\s\+$x\S*\s\+[0-9]" 
	fi
	if [ "$#" -eq 4 ]; 
	then
		x=$(echo $1 | grep -o ^.)
		y=$(echo $2 | grep -o ^.)
		z=$(echo $3 | grep -o ^.)
		w=$(echo $4 | grep -o ^.)
	cat $i | grep "^$x\S*\s\+$y\S*\s\+$z\S*\s\+$w\S*\s\+[0-9]" 
	cat $i | grep "^$w\S*\s\+$z\S*\s\+$y\S*\s\+$x\S*\s\+[0-9]" 
	fi
done | less
}
