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

# the rust installer doesn't do this nicely for fish, see
#https://github.com/rust-lang/rustup/issues/478
set PATH $HOME/.cargo/bin $PATH

#exa
if command -v exa > /dev/null
	abbr -a l 'exa'
	abbr -a ls 'exa'
  abbr -a ll 'exa -l'
  abbr -a lt 'exa -lrs changed'
	abbr -a la 'exa -la'

else
	abbr -a l 'ls'
	abbr -a ll 'ls -l'
	abbr -a la 'ls -la'
end

abbr -a o 'open'



# set the key bindings
set -g fish_key_bindings hybrid_bindings
# enable vim mode by default
#fish_vi_key_bindings
#fish_default_key_bindings
