all: edgelists years

edgelists: 
	find  -iname '*medline.xz' | ./nw.sh 


years: 
	find  -iname '*medline.xz' | ./years.sh




bibliometrics:
	git submodule init
	git submodule update
