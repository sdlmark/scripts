# write a script that automates the conversion of several SAM
# files in a folder to BAM files

from sys import argv
import os
from os import listdir

script, folder = argv

for f in folder:
	id_tag = f.split(".")
