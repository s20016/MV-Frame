" =============================================================================
" Filename: ~/.config/nvim/plugins.vim
" Author: s20016
" Last Change: Tue Jun 14 12:31:37 JST 2022
" =============================================================================

" netrw file browser
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 3
let g:netrw_winsize = 15

" PLUGIN: Themes
colorscheme onedark

highlight Normal       guibg=none
highlight Visual       guibg=#585858
highlight SignColumn   guibg=none guifg=#5e5e5e
highlight LineNr       guibg=none guifg=#5e5e5e
highlight NonText      ctermfg=none

" highlight CursorLine
highlight CursorColumn guibg=none guifg=none
highlight CursorLineNR guibg=#5e5e5e guifg=#808080

" ==== STATUS LINE ============================================================
" See `:h g:lightline.component` for details
" See `:h g:lightline.colorscheme` for available colorscheme

let g:lightline = {
	\ 'colorscheme': 'onedark',
	\ 'active': {
	\ 'left': [
	\		[ 'mode', 'paste' ],
	\   [ 'gitbranch' ],
	\   [ 'readonly', 'filename', 'modified' ] ],
	\ 'right': [
	\   [ 'lineinfo' ], [ 'percent' ], [ 'filetype' ] ] },
	\ 'component_function': {
  \   'gitbranch': 'FugitiveHead',
  \   'lineinfo': 'LightlineLineinfo' },
	\ 'tab': {
	\   'active': [ 'filename', 'modified' ],
	\   'inactive': [ 'tabnum' ]
	\ } }

" Highlight active window color
function! LightlineLineinfo() abort
	if winwidth(0) < 50
		return ''
	endif
	let l:current_line = printf('%-3s', line('.'))
	let l:max_line = printf('%-3s', line('$'))
	let l:lineinfo = '' . l:current_line . '/' . l:max_line
	return l:lineinfo
endfunction

" Tab separator
let g:lightline.separator = { 'left': '', 'right': '' }
let g:lightline.subseparator = { 'left': '', 'right': '' }
