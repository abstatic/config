# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

#if [ "$color_prompt" = yes ]; then
#    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@#\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
#else
#    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
#fi
unset color_prompt force_color_prompt


# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
#    alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias gradle='/home/abstatic/TS/gradle-2.1/bin/gradle'
alias mvn='/home/abstatic/Software/apache-maven-3.3.3/bin/mvn'
alias lampp='sudo /opt/lampp/lampp'
# my brightness control
alias brightness='xbacklight -set'
#ci server
alias server='ssh root@128.199.246.15'
#production
alias staging='ssh root@128.199.117.202'
# alias for compiling gtk based files
alias cgtk='gcc `pkg-config --cflags gtk+-3.0 --libs gtk+-3.0`'
alias gcc='gcc -std=c99 -ggdb3 -o'
##alias for docker
alias docker='sudo docker'
alias showtree='git log --pretty=oneline --graph --decorate --all'
alias nautilus='nautilus --no-desktop'
alias ..="cd .."
alias ...="cd ../.."

#alias for colored tree xD
alias tree='tree -C'

#trying to set a path variable
export PATH=$PATH:/opt/jdk/bin/
JAVA_HOME='/opt/jdk/'
black="\[\033[0m\]"
red="\[\033[0;31m\]"
green="\[\033[0;32m\]"
yellow="\[\033[0;33m\]"
blue="\[\033[0;34m\]"
purple="\[\033[0;35m\]"

PS1="[$green\t$black] $red\W$black \$ "
# PS1="hello: "

man() {
    env LESS_TERMCAP_mb=$'\E[01;31m' \
    LESS_TERMCAP_md=$'\E[01;38;5;74m' \
    LESS_TERMCAP_me=$'\E[0m' \
    LESS_TERMCAP_se=$'\E[0m' \
    LESS_TERMCAP_so=$'\E[38;5;246m' \
    LESS_TERMCAP_ue=$'\E[0m' \
    LESS_TERMCAP_us=$'\E[04;38;5;146m' \
    man "$@"
}

## Editing path for algs4
export PATH=$PATH:/home/abstatic/algs4/bin:/home/ubuntu/Downloads/pycharm-5.0.4/bin/

## adding node to path , this is handled using nvm now
##export PATH=$PATH:/home/ubuntu/dev/node6/bin/

## Configuring aliases for xrandr. Just because.
alias HDMI='xrandr --output HDMI1 --auto --output eDP1 --off --output DP1 --off'
alias laptop='xrandr --output eDP1 --auto --output HDMI1 --off --output DP1 --off'
alias dual='xrandr --output eDP1 --auto --output HDMI1 --auto --left-of eDP1 --output DP1 --off'
alias triple='xrandr --output eDP1 --auto --output HDMI1 --auto --right-of eDP1 --output DP1 --auto --right-of HDMI1'

# alias for changing the volume of LAPTOP
alias volume='pactl set-sink-volume 0'

# alias for changing the display of laptop

# alias for myally dev
alias lly="source /home/ubuntu/dev/myally/bin/activate; cd /home/ubuntu/dev/skedool.it/skedoolit-internal-site/"

# alias for cool git log!
alias log='git log --all --decorate --oneline --graph'

# alias for copy paste stuff
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

##ruby stuff
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"

#gpg magic
function encrypt() {
  file="`cat $1`"
  gpg -c $1 -o $1+=".txt"
  rm $1
}

# Added by Canopy installer on 2016-10-22
# VIRTUAL_ENV_DISABLE_PROMPT can be set to '' to make the bash prompt show that Canopy is active, otherwise 1
alias activate_canopy="source '/home/ubuntu/Enthought/Canopy_64bit/User/bin/activate'"
# VIRTUAL_ENV_DISABLE_PROMPT=1 source '/home/ubuntu/Enthought/Canopy_64bit/User/bin/activate'

export NVM_DIR="/home/ubuntu/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

alias ec2='ssh -i "/home/ubuntu/Downloads/abhishek-myally.pem" ec2-user@54.186.120.63'
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
