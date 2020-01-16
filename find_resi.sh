find_resi() { 
	for i in $(find . top | grep top && find . str | grep str); do 
		echo $i
		cat $i | grep $1
	done 

}
