[[ $- != *i* ]] && return

export GPG_TTY=$(tty)
export EDITOR=vim
export HISTSIZE=-1
export HISTFILESIZE=-1
export WLR_RENDERER=vulkan
export GTK_THEME=Adwaita:dark
export GOPATH=/home/moll/.local/go
export CARGO_HOME=/home/moll/.local/cargo
export TEXMFHOME=/home/moll/.local/texlive/texmf
export TEXMFVAR=/home/moll/.local/texlive/texmf-var
export TEXMFCONFIG=/home/moll/.local/texlive/texmf-config
export SQLITE_HISTORY=/home/moll/.local/sqlite_history
export GVIM_ENABLE_WAYLAND=1

alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias p='sudo cupsd && sudo avahi-daemon'
alias pg='sudo systemctl start postgresql && \
	sudo -i -u postgres'
alias mcserv='cd ~/minecraft; \
	java/bin/java -jar ~/minecraft/server.jar'

alias bt='sudo tlp bat'
alias ac='sudo tlp ac'
alias st='sudo tlp start'
alias on='systemd-inhibit --what=idle:sleep'

alias upd='sudo tlp ac; sudo pacman -Syu; sudo tlp start'
alias aur='~/.local/update.sh'

alias wifi='nmcli device wifi'
alias conn='nmcli device wifi connect --ask'

alias r='wf-recorder -f ~/buff/$(date +%s).mkv \
	--audio=$(pactl get-default-sink).monitor \
	-c h264_vaapi -p qp=24 2> /dev/null'
alias rr='wf-recorder -g "$(slurp)" -f ~/buff/$(date +%s).mkv \
	--audio=$(pactl get-default-sink).monitor \
	-c h264_vaapi -p qp=24 2> /dev/null'

alias hddbakhome='rsync -aL --delete /home/moll /run/media/moll/3021 --exclude '.cache' --exclude '.local/share/Trash' --exclude 'git' --exclude 'media''
alias hddbakmedia='rsync -a --delete /home/moll/media /run/media/moll/3021'
alias flashbakhome='rsync -aL --delete /home/moll /run/media/moll/77EF-E96B --exclude '.cache' --exclude '.local/share/Trash' --exclude 'git/kernels' --exclude 'media' 2>/dev/null'
alias pixelbakhome='rsync -aL --delete --inplace /home/moll /var/run/user/1000/gvfs/mtp:host=Google_Pixel_6a_26081JEGR24340/Internal\ shared\ storage/ --exclude '.cache' --exclude '.local/share/Trash' --exclude 'git/kernels' --exclude 'media' 2>/dev/null'

PS1='[\u@\h \W]\$ '
