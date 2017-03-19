
tmux-me() {
	if [[ -n $1 ]]; then 
		tmux new -As $1
	else
		tmux new -As $USER
	fi
}

# run tmux on startup
if command -v tmux>/dev/null; then
	[[ ! $TERM =~ screen ]] && [ -z $TMUX ] && tmux new -As $USER
fi

