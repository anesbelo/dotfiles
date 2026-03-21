SHELL := bash

NAME := dotfiles

FILES := .hushlogin
FILES += .aliases
FILES += .exports
FILES += .path
FILES += .profile
FILES += .bashrc
FILES += .bash_profile
FILES += .bash_logout
FILES += .vimrc
FILES += .tmux.conf
FILES += .gitconfig

RM := rm -f

${NAME}:
	for file in ${FILES}; do \
		ln -sf $(shell pwd)/$$file $(HOME)/$$file; \
	done;

all: ${NAME}

clean:
	for file in ${FILES}; do \
		$(RM) $(HOME)/$$file; \
	done;

re: clean all

.PHONY: re clean all
