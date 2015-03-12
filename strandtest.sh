#!/bin/bash
# determine strandedness of exons from a list of exons that show a >=10 count difference
# between non-stranded and reverse-stranded conditions

gff=$2

while read -r line
do 
#	echo $line
	exonID=$(echo $line | tr ":" " " | awk '{print $2}')
	echo $exonID
	strand=$(echo grep $exonID $2 \| awk '{print $7}')
	echo $strand
done < $1
