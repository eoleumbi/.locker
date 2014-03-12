
" Window
set co=125
set lines=55

" Font
if has('gui_gtk2')
  set guifont=Monospace\ 11
elseif has('gui_macvim')
  set guifont=Monaco:h11
elseif has('gui_win32')
  set guifont=Bitstream_Vera_Sans_Mono:h11:cANSI
  set guifont+=Consolas:h12:cANSI
endif

set guioptions-=m   "no menu bar
set guioptions-=T   "no toolbar

