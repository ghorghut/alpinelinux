alias la='ls -A'
alias l='ls -CF'      # file type recognition with chars
alias lx='ls -lXB'    # sort by extension
alias lr='ls -R'      # recursive ls
alias ll='ls -l'
alias lz='ll -rS'     # sort by size
alias lt='ll -rt'     # sort by date
alias lm='la | more'

alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'                    # 'rm -i' prompts for every file
alias ln='ln -i'

alias s='cd ..'
alias du="du -c -h"
alias free='free -m'
alias nano='nano -w -c'
alias more='less'
alias mkdir='mkdir -p -v'
alias ping='ping -c 5'
alias da='date "+%A, %B %d, %Y [%T]"'
alias lbuci='sudo lbu ci -v'

## Globals Prompt Colors

# Normal Colors
Black='\e[0;30m'        # Black
Red='\e[0;31m'          # Red
Green='\e[0;32m'        # Green
Yellow='\e[0;33m'       # Yellow
Blue='\e[0;34m'         # Blue
Purple='\e[0;35m'       # Purple
Cyan='\e[0;36m'         # Cyan
White='\e[0;37m'        # White

# Bold
BBlack='\e[1;30m'       # Black
BRed='\e[1;31m'         # Red
BGreen='\e[1;32m'       # Green
BYellow='\e[1;33m'      # Yellow
BBlue='\e[1;34m'        # Blue
BPurple='\e[1;35m'      # Purple
BCyan='\e[1;36m'        # Cyan
BWhite='\e[1;37m'       # White

# Background
On_Black='\e[40m'       # Black
On_Red='\e[41m'         # Red
On_Green='\e[42m'       # Green
On_Yellow='\e[43m'      # Yellow
On_Blue='\e[44m'        # Blue
On_Purple='\e[45m'      # Purple
On_Cyan='\e[46m'        # Cyan
On_White='\e[47m'       # White

NC="\e[m"               # Color Reset


# Test connection type:
if [ -n "${SSH_CONNECTION}" ]; then
    CNX="-SSH-"        # Connected on remote machine, via ssh (good).
else
    CNX=""       # Connected on local machine.
fi

# Test user type:
if [[ ${USER} == "root" ]]; then
    SU=${BRed}           # User is root.
else
    SU=${BGreen}         # User is normal (well ... most of us are).
fi

# Create Prompt
PS1="\[${SU}\]\u\[${NC}\]@\h \W\${CNX}\[${NC}\]> "
