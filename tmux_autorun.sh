
# run tmux on startup
if command -v tmux>/dev/null; then
	[[ ! $TERM =~ screen ]] && [ -z $TMUX ] && tmux new -At $USER
fi

