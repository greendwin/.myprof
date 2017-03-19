
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

reload() {
	echo Reloading ~/.zshrc
	source ~/.zshrc
}

alias gs='git status'

alias install='sudo apt-get install'
alias search-apt='apt-cache search'

# remove potentially harmful aliases
unalias gp
unalias gl

alias gl='glog'

# let G will pass colors always (so it's possible to use less)
# GG version should be used for output to files
unalias 'G'
alias -g G='| grep --color=always'
alias -g GG='| grep'
