# path
export PATH=$PATH$( find $HOME/.local/bin/ -type d -printf ":%p" )

# default programs:
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="brave"
export XDG_CONFIG_HOME="$HOME/.config"

# autostartx
if pacman -Qs libxft >/dev/null 2>&1; then
	# Start graphical server on user's current tty if not already running.
	[ "$(tty)" = "/dev/tty1" ] && ! pidof -s Xorg >/dev/null 2>&1 && startx
else
	echo "\033[31mIMPORTANT\033[0m: Note that \033[32m\`libxft\`\033[0m must be installed for this build of dwm.
Please run:
	\033[32mpacman -S libxft\033[0m
and replace \`libxft\`. Afterwards, you may start the graphical server by running \`startx\`."
fi
