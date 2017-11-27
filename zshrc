
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

source ~/.myprof/tmux_autorun.sh

# functions and aliases
reload() {
	echo Reloading ~/.zshrc
	source ~/.zshrc
}

mkcd() {
	mkdir -p "$1" && cd "$1";
}

unpack() {
  filename="$1"
  case $filename in
    *.tgz) tar zxvf $filename ;;
    *) echo "Error: Unknown archive type" ;;
  esac
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
