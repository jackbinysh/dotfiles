# enable vim mode by default
fish_vi_key_bindings

# fzf
set -x FZF_DEFAULT_OPTS "--layout=reverse --height 40%"
set -x FZF_DEFAULT_COMMAND "rg --files --glob '!.git'"
set -x FZF_ALT_C_COMMAND "fdfind --type d --hidden --follow --exclude ".git" "

#i3, When I open a terminal, it opens at the path I was at in the previous terminal.
# just before a new prompt appears, grab the path and store it in whereami
# read that location and change to it
cd (cat ~/.whereami)

# autojump
 if test -f /usr/share/autojump/autojump.fish;
	source /usr/share/autojump/autojump.fish;
end
