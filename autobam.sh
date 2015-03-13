#!/bin/bash
# shell script to automate conversion of SAM files into BAM files using samtools

set -e
set -o pipefail

for file in $1*.sam
do 
	echo $file
	id_tag=$(echo $file | tr "." " " | awk '{print $1}' )
	echo $id_tag
	command=$(samtools view -bS $file > $id_tag.Aligned.bam 2> $id_tag.Aligned.bam.err)
	echo $command 
done 
