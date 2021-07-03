-- vim.cmd('colorscheme nvcode')
vim.cmd('colorscheme nightfly')

function _G.change_lsp_diagnostic_text_colors() 
  -- vim.cmd[[ highlight LspDiagnosticsSignWarning guifg=#7E5109 ]]
  vim.cmd[[ highlight LspDiagnosticsVirtualTextError guifg=#F44747 ]]
  vim.cmd[[ highlight LspDiagnosticsVirtualTextWarning guifg=#5C6370 ]]
  vim.cmd[[ highlight LspDiagnosticsVirtualTextInformation guifg=#5C6370 ]]
  vim.cmd[[ highlight LspDiagnosticsVirtualTextHint guifg=#5C6370 ]]
  vim.cmd[[ highlight Normal guibg=#201f1e]]

end
--[[
    LspDiagnosticsUnderlineError
    LspDiagnosticsUnderlineWarning
    LspDiagnosticsUnderlineInformation
    LspDiagnosticsUnderlineHint
 ]]
vim.cmd[[ autocmd VimEnter * lua _G.change_lsp_diagnostic_text_colors()]]
-- vim.cmd[[ autocmd VimEnter * highlight LspDiagnosticsVirtualTextWarning guifg=#5C6370 ]]

-- vim.cmd[[ highlight LspDiagnosticsSignWarning guifg=#7E5109 ]]
-- vim.cmd[[ highlight LspDiagnosticsVirtualTextError guifg=#F44747 ]]
-- vim.cmd[[ highlight LspDiagnosticsVirtualTextWarning guifg=#5C6370 ]]
-- vim.cmd[[ highlight LspDiagnosticsVirtualTextInformation guifg=#5C6370 ]]
-- vim.cmd[[ highlight LspDiagnosticsVirtualTextHint guifg=#5C6370 ]]

-- vim.cmd('colorscheme nightfly')
--[[
-- vim.cmd[[ highlight LspDiagnosticsSignInformation guifg=#5C6370 ]]
-- vim.cmd[[ highlight LspDiagnosticsSignHint guifg=#5C6370 ]]
--]]

