
source ~/.config/nvim/vim-plug/plugins.vim
source ~/.config/nvim/general/settings.vim
source ~/.config/nvim/keys/mappings.vim
source ~/.config/nvim/themes/onedark.vim
source ~/.config/nvim/plug-config/coc.vim
source ~/.config/nvim/plug-config/rust.vim
source ~/.config/nvim/themes/airline.vim
lua require 'plug-colorizer'
source ~/.config/nvim/plug-config/rainbowparen.vim
"source ~/.config/nvim/plug-config/rnvimr.vim
source ~/.config/nvim/plug-config/fzf.vim
source ~/.config/nvim/keys/which-key.vim


command! Scratch lua require'tools'.makeScratch()
