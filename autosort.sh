#!/bin/bash
# sort *.bam files in a folder (necessary before counting)

folder=$1

for file in $folder*.bam
do
	echo $file
	tag=$(echo $file | tr "." " " | awk '{print $1}' - )
	sortname=$(echo $tag.sorted)
	echo $sortname
	samtools sort -n $file $sortname 2>$tag.sorting.err
done
