set nocompatible               " be iMproved

syntax enable

source ~/.locker/.vundle    "TODO replace .locker to current directory

if !empty(globpath(&rtp, 'colors/solarized.vim'))
    colorscheme solarized
    set background=dark
else
    colorscheme desert
endif

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
