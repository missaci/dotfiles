#!/usr/bin/env bash

for f in $(find ~/dotfiles/* -maxdepth 0 -type f -not -name "install.sh" -not -name "LICENSE" -not -name "README.md")
do
	rm -f "$HOME/.${f##*/}"
	ln -s "$f" "$HOME/.${f##*/}"
done
