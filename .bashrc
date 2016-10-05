#
# ~/.bashrc under Archlinux and i3 wm
#

[[ -f ~/.extend.bashrc ]] && . ~/.extend.bashrc

[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion

alias home='cd ~'
alias grep='grep --color=auto'
alias unigrep='grep -P "[^\x00-\x7F]"' 
alias ls='ls --color'
alias nano="vim"
export VISUAL=vim
export EDITOR="$VISUAL"



alias rmd='/bin/rm  --recursive --force --verbose '


man() {
	env \
		LESS_TERMCAP_mb=$(printf "\e[1;31m") \
		LESS_TERMCAP_md=$(printf "\e[1;31m") \
		LESS_TERMCAP_me=$(printf "\e[0m") \
		LESS_TERMCAP_se=$(printf "\e[0m") \
		LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
		LESS_TERMCAP_ue=$(printf "\e[0m") \
		LESS_TERMCAP_us=$(printf "\e[1;32m") \
		man "$@"
}


if [[ $iatest > 0 ]]; then bind "set show-all-if-ambiguous On"; fi


export LS_COLORS='no=00:fi=00:di=00;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:*.xml=00;31:'


alias yoaurt='yaourt'
alias yuaort='yaourt'
alias youart='yaourt'
alias yauort='yaourt'
alias yuoart='yaourt'


alias pacman='sudo pacman'

alias install='sudo pacman -S'      #install
alias p-sy='sudo pacman -Sy'    #sync refresh
alias update='sudo pacman -Syu'  #sync refresh sys update
alias remove='sudo pacman -R'      #remove
alias p-u='sudo pacman -U'      #install local pkg
alias p-rd='sudo pacman -Rd'    #remove omit dependencies
alias p-rs='sudo pacman -Rs'    #remove plus unused dependencies
alias p-scc='sudo pacman -Scc'  #clean catch - all pkgs
alias p-sc='sudo pacman -Sc'    #clean catch - old pkgs only
alias p-ss='sudo pacman -Ss'    #query database
alias p-qs='sudo pacman -Qs'    #query installed only
alias p-si='sudo pacman -Si'    #pkg info
alias p-qi='sudo pacman -Qi'    #pkg more info
alias p-qe='sudo pacman -Qe'    #look for installed orphans
alias p-ql='sudo pacman -Ql'    #find pkg file list
alias p-qo='sudo pacman -Qo'    #/path/to/file = find owner
alias p-sw='sudo pacman -Sw'    #download but don't install
alias reinstall='sudo pacman -Sf'    #reinstall - for dep problem
alias abs='sudo abs'            #update abs database
alias p-op='sudo pacman-optimize'



extract () {
	if [ -f $1 ] ; then
		case $1 in
			*.tar.bz2)   tar xjf $1        ;;
			*.tar.gz)    tar xzf $1     ;;
			*.bz2)       bunzip2 $1       ;;
			*.rar)       rar x $1     ;;
			*.gz)        gunzip $1     ;;
			*.tar)       tar xf $1        ;;
			*.tbz2)      tar xjf $1      ;;
			*.tgz)       tar xzf $1       ;;
			*.zip)       unzip $1     ;;
			*.Z)         uncompress $1  ;;
			*.7z)        7z x $1    ;;
			*)           echo "'$1' cannot be extracted via extract()" ;;
		esac
	else
		echo "'$1' is not a valid file"
	fi
}
