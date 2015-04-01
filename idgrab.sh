#!/bin/bash
# get ID tags from samples
# N.B. redirect stdout (1>) if you want it saved to a list
# 17-03-2015

for file in $1*.sam
do
	tag=$(echo $file | tr "." " " | awk '{print $1}' )
	echo $tag | tr "/" " " | awk '{print $NF}'
done 
