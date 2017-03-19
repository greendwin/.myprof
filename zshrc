
# god themes:
#	- crcandy
#	- avit
#	- ys

# plugins:
#	- common-aliases
#	- lol
#	- tmux
#	- pip, pyenv, python
#	- docker

# run tmux on startup
if command -v tmux>/dev/null; then
	[[ ! $TERM =~ screen ]] && [ -z $TMUX ] && tmux new -As $USER
fi

# functions and aliases
reload() {
	echo Reloading ~/.zshrc
	source ~/.zshrc
}

alias gs='git status'
alias gl='glog'

# remove potentially harmful aliases
unalias gp
unalias gl

# apt-get helpers
alias install='sudo apt-get install'
alias search-apt='apt-cache search'

# stop asking me on every deletion
unalias rm

# let G will pass colors always (so it's possible to use less)
# GG version should be used for output to files
unalias 'G'
alias -g G='| grep --color=always'
alias -g GG='| grep'
