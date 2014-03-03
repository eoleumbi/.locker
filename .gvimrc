
" Window
set co=125
set lines=55

" Font
if has('gui_gtk2')
  set guifont=Monospace\ 11
elseif has('gui_macvim')
  set guifont=Monaco:h11
elseif has('gui_win32')
  set guifont=Bitstream_Vera_Sans_Mono,Monospace:h11:cANSI
endif

set guioptions-=m   "no menu bar
set guioptions-=T   "no toolbar

