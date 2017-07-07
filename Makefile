SHELL=/bin/bash
BAKSRC=~/.vimrc ~/.bashrc

all:download notice
update:updatefile notice

download:
	git pull confBak master

updatefile:
	for src in $(BAKSRC);\
	do\
		cp $$src ./;\
	done
	git add ./*
	git commit -m "naive"
	git push confBak master

.PHONY:notice
notice:
	@echo done

