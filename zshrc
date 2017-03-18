
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
