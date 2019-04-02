
# use macvim in macOS
if [[ "$OSTYPE" == "darwin"* ]]; then
    alias vim='mvim -v'
fi
export EDITOR=vim

# enable color support of ls and also add handy aliases
if [[ "$OSTYPE" == "darwin"* ]]; then
    alias ls='ls -G'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
else
    if [ -x /usr/bin/dircolors ]; then
        test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
        alias ls='ls --color=auto'
        #alias dir='dir --color=auto'
        #alias vdir='vdir --color=auto'

        alias grep='grep --color=auto'
        alias fgrep='fgrep --color=auto'
        alias egrep='egrep --color=auto'
    fi
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# tag generation (ctags, cscope)
alias ta='ctags -R --extra=+q --sort=yes --tag-relative=yes'
alias ta="find . -regex '.*\.\(java\|c\|cpp\|h\|hpp\|asm\|s\|xml\)$' -a ! -name '*.git' |  ctags -L - --extra=+q --sort=yes --tag-relative=yes"

alias cj="find .  -name '*.java' -o -name '*.xml' -o -name '*.mk' | cscope -i- -bq"

alias sgrep="find . -regex '.*\.\(java\|c\|cpp\|h\|hpp\|asm\|s\|xml\)$' -a ! -name '*.git' | xargs grep"
alias mgrep="find . -regex '.*\.\(txt\|mk\|sh\|flags\|cmds\|Makefile\)$' -a ! -name '*.git' | xargs grep"

# PATH
export PATH=$HOME/bin:$PATH

# local configuration definitions.
[[ -f "${HOME}/.bash_host" ]] && . "${HOME}/.bash_host"

# view manuals in vi using vman
function vman() {
    vim -c "Man $*" -c "on"
}

alias Man='vman'
