#!/bin/bash
# run HTSeq on all files in a folder

set -e
set -o pipefail

folder=$1

for file in $folder*.sorted.bam
do 
	echo $file
	tag=$(echo $file | tr "." " " | awk '{print $1}' )
	htseq-count --format=bam --stranded=reverse --mode=intersection-nonempty --idattr=Parent --type=exon $file ~/c_briggsae.WBonly_exon.gff3 > $tag.count 2> $tag.err
done
