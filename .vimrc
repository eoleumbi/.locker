set nocompatible               " be iMproved

syntax enable

source ~/.locker/.vundle    "TODO replace .locker to current directory

set background=dark
colorscheme solarized

" cscope
if has("cscope")
    set csto=1
    set cst

    set nocsverb
    " add any database in current directory
    if filereadable("cscope.out")
        cs add cscope.out
    " else add database pointed to by environment
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif
    set csverb
endif
