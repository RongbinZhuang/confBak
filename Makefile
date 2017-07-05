SHELL=/bin/bash
BAKSRC=~/.vimrc ~/.bashrc

update:
	for src in BAKSRC\
	do\
		echo $$src;\
	done
