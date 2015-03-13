#!/bin/bash
# shell script to automate conversion of SAM files into BAM files using samtools

for file in $1*.sam
do 
	echo $file
	id_tag=$(echo $file | tr "." " " )
	echo $id_tag
done 
