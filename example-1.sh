#!/usr/bin/env bash

re1="\b[17]{5}\b$"
re2="/([A-Z]\w/g"

re3="^[A-Za-z]*$"
re4="^[A][a-zA-Z]*[a]$"
re5="^[Dd][a-zA-Z]*[d]$"

count=0

filename="$1"
while read -r line
do
   words=${line}
   for word in $words
   do 
	if [[ $word =~ $re1 ]]; then
	    echo ' matching word: '$word
	    count=$((count+1))
	fi
   done 
done < ${filename}

echo "matching count: $count"

