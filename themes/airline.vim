" enable tabline
let g:airline#extensions#tabline#enabled = 1

" tabline seperators
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''

" enable modified detection
let g:airline_detect_modified=1


" enable powerline fonts, use unicode symbols
let g:airline_powerline_fonts = 1

" status line seperators
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

" Switch to your current theme
let g:airline_theme = 'onedark'

" Always show tabs
set showtabline=2

" We don't need to see things like -- INSERT -- anymore
set noshowmode
" Define new accents
function! AirlineThemePatch(palette)
  " [ guifg, guibg, ctermfg, ctermbg, opts ].
  " See "help attr-list" for valid values for the "opt" value.
  " http://vim.wikia.com/wiki/Xterm256_color_names_for_console_Vim
  let a:palette.accents.red_bold = [ '#800080', 'black' , 'yellow', 'black', 'bold' ]
endfunction
let g:airline_theme_patch_func = 'AirlineThemePatch'
function! WinBufnr() 
    let w = winnr()
    let b = bufnr()
    return 'W' . w . '|B' . b
endfunction

call airline#parts#define_function('winbufnr', 'WinBufnr')
call airline#parts#define_accent('winbufnr', 'red_bold')
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'
" let g:airline_section_a = airline#section#create(['[%-0.2{winnr()}|%-0.2n] ', 'mode', ' ', 'branch'])
" let g:airline_section_a = airline#section#create(['winbufnr', ' ', 'mode', ' ', 'branch'])
" let g:airline_section_c = airline#section#create(['winbufnr', ' ', '%<', 'path']) " let g:airline_section_b = '%-0.20{winnr()}'
" call airline#parts#define_accent('mode', 'none')

function! WindowAndBufferNumber(...)
    let builder = a:1
    let context = a:2
    " call builder.add_section('airline_a', ' W%{tabpagewinnr(tabpagenr())}|B%n')
    call builder.add_section('airline_a', airline#section#create(['winbufnr']))
    return 0
endfunction

call airline#add_statusline_func('WindowAndBufferNumber')
call airline#add_inactive_statusline_func('WindowAndBufferNumber')




