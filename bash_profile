[[ -f ~/.bashrc ]] && . ~/.bashrc

GPG_TTY=$(tty)
export GPG_TTY

if [ -z "$WAYLAND_DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ] ; then
	WLR_RENDERER=vulkan sway
fi
