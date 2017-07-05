SHELL=/bin/bash
BAKSRC=~/.vimrc ~/.bashrc /bin/bash

download:
	git pull confBak master

update:
	for src in $(BAKSRC);\
	do\
		cp $$src ./;\
	done
	git add .
	git commit -m "naive"
	git push confBak master


