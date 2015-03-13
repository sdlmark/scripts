# this script takes a simple list of genes and their orientation
# and compiles them into a table of gene ID, orientation (+/-),
# and number of exons

# N.B. Save the output of this program via command line redirection (1>)
# Also, exons are not in order. Sort via the command line.

# Warning! This script does not check that all exons within one gene are 
# in the same direction. While this will most likely not be a problem,
# if there are directional errors in the annotation they will not be
# detected.

# 2015-03-13

from sys import argv
from compiler.ast import flatten

script, listfile = argv

with open(listfile) as exonlist:
	for exon in exonlist:
#		print exon
		temp_array = []
		no_return = exon.rstrip("\n")
#		print no_return
		temp_array.append(no_return.split(" "))
		exon_array = flatten(temp_array)
		print exon_array[0], exon_array[1], len(exon_array) - 1	
