# write a script that automates the conversion of several SAM
# files in a folder to BAM files

from sys import argv
import os
from os import listdir

script, folder = argv

filelist = listdir(folder)

for f in filelist:
	id_tag = f.split(".")[0] + ".Aligned.bam"
#	print f, id_tag
	command = "samtools view -bS %s > % s" % (f, id_tag)
	print command
	os.system(command)	
