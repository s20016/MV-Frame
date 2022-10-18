" ============================================================================
" Filename: ~/.config/nvim/init.vim
" Author: s20016
" Last Change: Tue Jun 14 12:31:37 JST 2022
" =============================================================================

" Enables alias in nvim
let $BASH_ENV = "~/.bash_aliases"

" ==== PLUGIN =================================================================

call plug#begin(expand('~/.local/share/nvim/site/plugged'))

Plug 'itchyny/lightline.vim'                              " Minimal statuline
Plug 'joshdick/onedark.vim'                               " Color Scheme

call plug#end()

" Source file to include configs in nvim
source $HOME/.config/nvim/setting.vim
source $HOME/.config/nvim/mapping.vim
source $HOME/.config/nvim/plugins.vim

" NOTE:
" Sessions are saved in $HOME/.config/nvim/session/
" Netrwhist are saved in $HOME/.config/nvim/
