nnoremap <leader>am :vsplit ~/.config/nvim/keys/mappings.vim <cr>
nnoremap <leader>sm :source ~/.config/nvim/keys/mappings.vim <cr>


"
" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
nnoremap <M-j> :resize -2<CR>
nnoremap <M-k> :resize +2<CR>
nnoremap <M-h> :vertical resize -2<CR>
nnoremap <M-l> :vertical resize +2<CR>

" escape
inoremap jk <Esc>
inoremap kj <Esc>

" Easy CAPS
inoremap <c-u> <Esc>viwUi
nnoremap <c-u> viwU<Esc>

" TAB in general mode will move to next buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Alternate way to save and quit
nnoremap <C-s> :w<CR>
nnoremap <C-Q> :wq!<CR>
nnoremap <C-c> <Esc>

inoremap <expr><TAB> pumvisible()? "\<C-n>" : "\<TAB>"

vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da



" close window 
nnoremap <silent> <leader>wc <C-w>c

" close buffer 
nnoremap <silent> <leader>bd :bd<CR>
nnoremap <silent> <leader>bs :w<CR>



