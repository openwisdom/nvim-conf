-- vim.cmd[[ let &runtimepath=&runtimepath . ',' . '/'  ]]

require('plugins')
require('keymappings')
require('settings')
require('nv-lsp')
require('nv-completion')
require('nv-lua-ls')
require('nv-treesitter')
require('nv-galaxyline')
require('nv-colorizer')
require('nv-telescope')
require('nv-lspkind')
require('nv-lightbulb')
require('nv-colorscheme')
require('nv-smart-tab')
-- require('nv-ts-textobjects')
require('nv-barbar')
require('nv-lsp-extensions')
require('nv-lspsaga')
-- require('lsp_extensions')



vim.api.nvim_set_keymap("n", "<C-t>", ":lua require'lsp_extensions'.inlay_hints()<CR>", { noremap = true}) 
--[[
_G.test_get_params = function() 
	return { textDocument = vim.lsp.util.make_text_document_params() }
end
_G.test_handler = function(err, _, result, _, bufnr)
	print("request handler executed")
	print(vim.inspect(err))
	print(vim.inspect(result))
end
_G.test_hint = function()
vim.lsp.buf_request(0, "rust-analyzer/inlayHints", _G.test_get_params(), _G.test_handler)
end

vim.api.nvim_set_keymap("n", "<C-j>", ":lua _G.test_hint()<CR>", { noremap = true}) ]]
