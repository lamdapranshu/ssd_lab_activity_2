#! /bin/bash
no_of_lines=$(cat $1 | wc -l)

if [ $((no_of_lines%2)) -eq 0 ]
	then	
		line_to=$((no_of_lines/2))
		echo $(awk -v j=$line_to '{if(NR==j) print $0}' $1)
else 
		line_to=$((( no_of_lines + 1) / 2))
       		echo $(awk -v j=$line_to '{if(NR==j) print $0}' $1)
fi
