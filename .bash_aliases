
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
	vi -c "Man $*" -c "on"
}

alias Man='vman'
