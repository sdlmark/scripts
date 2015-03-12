#!/bin/bash
# run HTSeq on all files in a folder

folder=$1

for file in $folder*.sorted.bam
do 
	#echo $file
	tag=$(echo $file | tr "." " " | awk '{print $1}' )
#	echo $tag.count
#	command=$( htseq-count --format=bam --stranded=reverse --mode=intersection-nonempty --idattr=Parent --type=exon $file ~/c_briggsae.WBonly_exon.gff3 > $tag.count 2>$tag.err)
#	echo $command
	echo htseq-count --format=bam --stranded=reverse --mode=intersection-nonempty --idattr=Parent --type=exon $file ~/c_briggsae.WBonly_exon.gff3 \> $tag.count 2\> $tag.err
done
