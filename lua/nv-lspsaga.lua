require 'lspsaga'.init_lsp_saga()
vim.api.nvim_set_keymap('n', '<leader>gh', '<cmd>Lspsaga hover_doc<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>rn', '<cmd>Lspsaga rename<CR>', {noremap = true, silent = true})
