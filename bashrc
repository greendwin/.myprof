
MY_PROF=~/.myprof

# run tmux on startup
if command -v tmux>/dev/null; then
	[[ ! $TERM =~ screen ]] && [ -z $TMUX ] && tmux new -As $USER
fi

alias install="sudo apt-get install"

# add git helper aliases
if [[ -x `type -p git 2>&1` ]]; then
	alias g="git"
	alias ga="git add"
	alias gaa="git add --all"
	alias gb="git branch"
	alias gst="git status"
	alias gc="git commit -v"
	alias gd="git diff"
	alias gcm="git commit -m"
	alias gco="git checkout"
fi

# docker helpers
if [[ -x `type -p docker 2>&1` ]]; then
	alias dps="docker ps"
	alias dsh="docker exec $(docker ps -lq) /bin/sh"

	# TODO: create docker-build and docker-run with cached label in ~/.docker/default-label

	docker-cleenup() {
		echo Remove stopped containers...
		docker ps -a -q | xargs -r docker rm

		echo Remove untagged images...
		docker images -q --filter "dangling=true" | xargs -r docker rmi

		echo Done.
	}
fi

# always use vim as an edir
export VISUAL=vim
export EDITOR="$VISUAL"
