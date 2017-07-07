SHELL=/bin/bash
BAKSRC=~/.vimrc ~/.bashrc

all:download notice

download:
	git pull confBak master

.PHONY:notice
notice:
	@echo done
update:
	for src in $(BAKSRC);\
	do\
		cp $$src ./;\
	done
	git add ./*
	git commit -m "naive"
	git push confBak master


