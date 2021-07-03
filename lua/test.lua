--[[ if vim.fn.executable('tree_sitter') == 0 then
  print("tree-sitter not found")
  else
    print("OK, found tree-sitter")
  end
 ]]


-- Tab complete
-- function _G.smart_tab()
    -- return vim.fn.pumvisible() == 1 and [[<C-n>]] or [[<Tab>]]
-- end
-- vim.api.nvim_set_keymap('i', '<S-Tab>', 'v:lua.smart_tab()', {expr = true, noremap = true})

-- vim.api.nvim_set_keymap('i', '<TAB>', 'pumvisible() ? \"\\<C-n>\" : \"\\<TAB>\"', { expr = true, noremap = true, silent = true })
--


--[[ local resp =  function(err, method, result, client_id, bufnr, config)
	print("got result")
	print(vim.inspect(result))
end
local params = {textDocument = vim.lsp.util.make_text_document_params()}
print(vim.inspect(vim.api.nvim_win_get_cursor(0)))
vim.lsp.util.make_text_document_params()
vim.lsp.buf_request(0, "textDocument/documentSymbol", params, resp) ]]


local buf = vim.api.nvim_create_buf(false, true)
vim.api.nvim_buf_set_lines(buf, 0, -1, true, {"test", "text"})
local cw = vim.api.nvim_get_current_win()
local winop = {["relative"]= 'cursor', ["width"]= 10, ["height"]= 2, ["col"]= 0, ["row"]= 1, ["anchor"]= 'NW', ["style"]= 'minimal'}
local fwin = vim.api.nvim_open_win(buf, false, winop)
-- vim.api.nvim_set_current_win(cw)
vim.lsp.util.close_preview_autocmd({ "CursorMovedI", "CursorMoved", "BufHidden", "BufLeave"}, fwin)

