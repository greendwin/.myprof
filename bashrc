
# add git helper aliases
if [[ -x `type -p git 2>&1` ]]; then
	alias gs="git status"
	alias gadd="git add --all . && git status"
	alias gdiff="git diff"
	alias gcm="git commit -m"
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
