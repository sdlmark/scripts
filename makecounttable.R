# put headers on HTSeq count table in preparation for DESeq
# get headers from a list

setwd("~/mRNAcounts/")

count_table = as.data.frame("allsamplesName.count.table")

cnames = t(read.table("allidlist.txt", stringsAsFactors=FALSE))

allnames = append(c("gene"), cnames)

colnames(count_table) = allnames 


