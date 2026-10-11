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
FILES += .config/ghostty
FILES += .vimrc
FILES += .config/nvim
FILES += .tmux.conf
FILES += .config/tmux
FILES += .gitconfig

RM := rm -f

all: ${NAME} tmux

${NAME}:
	mkdir -p $(HOME)/.config
	for file in ${FILES}; do \
		if [ ! -e "$(HOME)/$$file" ]; then \
			ln -sf $(shell pwd)/$$file $(HOME)/$$file; \
		fi \
	done;

tmux: ${NAME}
	$(HOME)/.config/tmux/init.sh

clean:
	for file in ${FILES}; do \
		$(RM) $(HOME)/$$file; \
	done;

fclean: clean
	$(RM) -r .config/tmux/plugins

re: fclean all

.PHONY: re fclean clean tmux all
