
" Window
set co=125
set lines=55

" Font
if has('gui_gtk2')
  set guifont=Monospace\ 14
elseif has('gui_macvim')
  set guifont=PTMono-Regular:h15
  set guifont+=BitstreamVeraSansMono-Roman:h15
  set guifont+=Monaco:h14
elseif has('gui_win32')
  set guifont=Bitstream_Vera_Sans_Mono:h14:cANSI
  set guifont+=Consolas:h14:cANSI
endif

set guioptions-=m   "no menu bar
set guioptions-=T   "no toolbar

