-- completion-nvim setup 
-- If you want completion-nvim to be set up for all buffers 
-- instead of only being used when lsp is enabled,
-- call the on_attach function directly
-- NOTE It's okay to set up completion-nvim without lsp. 
-- It will simply use another completion source instead(Ex: snippets).
-- vim.cmd[[ autocmd BufEnter * lua require'completion'.on_attach() ]]
-- vim.o.completeopt = "menuone,noselect,noinsert"

vim.o.completeopt = "menuone,noselect"

require'compe'.setup {
    enabled = true,
    autocomplete = true,
    debug = false,
    min_length = 1,
    preselect = 'enable',
    throttle_time = 80,
    source_timeout = 200,
    incomplete_delay = 400,
    max_abbr_width = 100,
    max_kind_width = 100,
    max_menu_width = 100,
    documentation = true,

    source = {
        path = {kind = "  "},
        buffer = {kind = "  "},
        calc = {kind = "  "},
        vsnip = {kind = "  "},
        nvim_lsp = {kind = "  "},
        nvim_lua = {kind = "  "},
        -- spell = {kind = "  ", filetypes = "markdown"},
        tags = false,
        snippets_nvim = {kind = "  "},
        treesitter = {kind = "  "},
        emoji = {kind = " ﲃ "}
        -- for emoji press : (idk if that in compe tho)
    }
}

vim.api.nvim_set_keymap('i', '<CR>', 'compe#confirm(\'<CR>\')', {noremap = true, silent = true, expr = true})
