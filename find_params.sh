find_params() { 
	for i in $(find . prm | grep prm && find . str | grep str); do 
		echo $i
		cat $i | grep $1
	done 

}
