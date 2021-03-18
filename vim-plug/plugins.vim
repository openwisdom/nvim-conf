" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

Plug 'joshdick/onedark.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'junegunn/rainbow_parentheses.vim'

"Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'liuchengxu/vim-which-key'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'

" Plug 'vim-syntastic/syntastic'
Plug 'rust-lang/rust.vim'
" Plug '~/projects/vim/iq33-rs'
Plug 'openwisdom/rust-util', { 'branch': 'main' }

call plug#end()
