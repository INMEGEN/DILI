all: edgelists years

edgelists: bibliometrics
	find  -iname '*medline.xz' | ./nw.sh 


years: bibliometrics
	./years.sh


bibliometrics:
	git submodule init
	git submodule update
