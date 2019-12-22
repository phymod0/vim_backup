

color=$(((RANDOM % 6) + 1))

PS1='${debian_chroot:+($debian_chroot)}\[\033[01;3$((color))m\]\u@\h \[\033[01;30m\]>>= '

#colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

if [ "$TERM" = "linux" ]; then
    echo -en "\e]P0181818" #black
    echo -en "\e]P1202020" #darkred
#echo - en "\e]P21A7474" #darkgreen
    echo -en "\e]P2500000" #darkgreen
    echo -en "\e]P3FB823E" #brown (darkyellow)
    echo -en "\e]P4000000" #darkblue
    echo -en "\e]P5E55B7C" #darkmagenta
    echo -en "\e]P61A7474" #darkcyan
#echo - en "\e]P700DFFF" #lightgrey
    echo -en "\e]P7505000" #lightgrey
    echo -en "\e]P8707070" #darkgrey
    echo -en "\e]P9EF4B4B" #red
    echo -en "\e]PA5ECF38" #green
    echo -en "\e]PBFCCC50" #yellow
    echo -en "\e]PC44ABC0" #blue
    echo -en "\e]PDF75492" #magenta
    echo -en "\e]PE00DFFF" #cyan
    echo -en "\e]PFFFFFFF" #white
    clear #for background artifacting
fi

if [ "$TERM" = "xterm-256color" ]; then
    echo -en "\e]P0181818" #black
    echo -en "\e]P1202020" #darkred
    echo -en "\e]P21A7474" #darkgreen
    echo -en "\e]P3FB823E" #brown (darkyellow)
    echo -en "\e]P4000000" #darkblue
    echo -en "\e]P5E55B7C" #darkmagenta
    echo -en "\e]P61A7474" #darkcyan
    echo -en "\e]P700DFFF" #lightgrey
    echo -en "\e]P8707070" #darkgrey
    echo -en "\e]P9EF4B4B" #red
    echo -en "\e]PA5ECF38" #green
    echo -en "\e]PBFCCC50" #yellow
    echo -en "\e]PC44ABC0" #blue
    echo -en "\e]PDF75492" #magenta
    echo -en "\e]PE00DFFF" #cyan
    echo -en "\e]PFFFFFFF" #white
    clear #for background artifacting
fi

#cat /etc/banner
#archey3 - c cyan
modprobe -r pcspkr
if [ "$TERM" = "xterm-256color" ]; then
	setxkbmap -option caps:ctrl_modifier
fi

COMP=~/ivw/competitive/
