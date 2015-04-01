#!/bin/bash
# this script makes a metadata table from a list of sample files
# the table is suitable for use with DESeq

sample_list=$(awk '{print}' $1)

for id in $sample_list
do
	strain_temp=$(echo $id | tr "-" " "|awk '{print $1}' - )
	sample=$(echo $id | tr "-" " " | awk '{print $2}' -)
	echo $strain_temp
	echo $sample
	strain=$(echo $id | tr "-" " " | awk '{print $1}' - | sed 's/[0-9]//' $strain_temp)
	echo $strain
done


