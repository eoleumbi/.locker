set nocompatible               " be iMproved

syntax enable

source ~/.locker/.vundle    "TODO replace .locker to current directory
if has('gui_running')
    source ~/.locker/.gvimrc
endif

if !empty(globpath(&rtp, 'colors/solarized.vim'))
    colorscheme solarized
    set background=dark
else
    colorscheme desert
endif

"=============================================================================
" General
set nobk  "no backup
set ic    "ignore case in search
set hls   "highlight matches of previous search pattern
set sm    "jumping to matching bracket

set ts=4
set sw=4
if exists('+colorcolumn')
  set cc=+1 "highlight column after 'textwidth'
endif

if has('multi_byte_ime') || has('multi_byte')
  "red cursor for Korean input mode
  highlight CursorIM guibg=Red guifg=NONE
endif

runtime ftplugin/man.vim

"=============================================================================
" Plugin

" fugitive {
  "auto-clean fugitive buffers
  autocmd BufReadPost fugitive://*    set bufhidden=delete
  "add git branch to status line
  set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
" }

" Calendar {
  let g:Calendar_weeknm = 5	"show the week number
" }

" EasyGrep {
    let g:EasyGrepMode = 3 "user mode
    let g:EasyGrepRecursive = 1 "recursive search
    " pattern for user mode
    let g:EasyGrepDefaultUserPattern =" *.java *.xml"
    let g:EasyGrepDefaultUserPattern.=" *.cpp *.c *.hpp"
    let g:EasyGrepDefaultUserPattern.=" *.mk *.log"
" }

" NERDTree {
  let NERDTreeIgnore = [
    \ '^\(bin\|gen\|build\)$[[dir]]',
    \ '\.\?gradle$', '^gradlew\(.bat\)\?$[[file]]',
    \ '\.iml$[[file]]',
    \ '\~$',
    \ ]
" }

" TagBar {
    autocmd BufEnter * nested :call tagbar#autoopen(0)
" }

" cscove {
    nnoremap  <leader>fa :call cscope#findInteractive(expand('<cword>'))<CR>
    nnoremap  <leader>l :call ToggleLocationList()<CR>

    " s: Find this C symbol
    nnoremap  <leader>fs :call cscope#find('s', expand('<cword>'))<CR>
    " g: Find this definition
    nnoremap  <leader>fg :call cscope#find('g', expand('<cword>'))<CR>
    " d: Find functions called by this function
    nnoremap  <leader>fd :call cscope#find('d', expand('<cword>'))<CR>
    " c: Find functions calling this function
    nnoremap  <leader>fc :call cscope#find('c', expand('<cword>'))<CR>
    " t: Find this text string
    nnoremap  <leader>ft :call cscope#find('t', expand('<cword>'))<CR>
    " e: Find this egrep pattern
    nnoremap  <leader>fe :call cscope#find('e', expand('<cword>'))<CR>
    " f: Find this file
    nnoremap  <leader>ff :call cscope#find('f', expand('<cword>'))<CR>
    " i: Find files #including this file
    nnoremap  <leader>fi :call cscope#find('i', expand('<cword>'))<CR>
" }

" CtrlP {
  if exists("g:ctrl_user_command")
    unlet g:ctrlp_user_command
  endif
  let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/](\.(git|hg|svn)|(bin|gen|build))$',
    \ 'file': '\v\.(exe|so|dll)$',
    \ }
" }
