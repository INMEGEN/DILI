ALL=`{find . -name '*_edgelist.tsv.xz' | sed -s 's/_edgelist.tsv.xz/.json/g'}

all:V: $ALL

%.json:	%_edgelist.tsv.xz
	xzcat $prereq | ./edgelist2json.py > $target
