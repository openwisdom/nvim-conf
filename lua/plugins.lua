local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end


return require('packer').startup(function()
  -- Packer can manage itself as an optional plugin
  use {'wbthomason/packer.nvim', opt = false}
  use 'kyazdani42/nvim-web-devicons'
  use {
      'kyazdani42/nvim-tree.lua',
      --[[ requires = 'kyazdani42/nvim-web-devicons',
      config = function() require'nvim-tree'.setup {} end ]]
  }
  -- language server
  use 'neovim/nvim-lspconfig'
  -- code action lightbulble
  use 'kosayoda/nvim-lightbulb'
  -- completion icon
  use 'onsails/lspkind-nvim'
  use 'glepnir/lspsaga.nvim'
  -- inlay hints
  -- use 'nvim-lua/lsp_extensions.nvim'
  -- completion
  use { 'hrsh7th/nvim-compe', disable = false }
  use { 'nvim-lua/completion-nvim', disable = true }
  -- use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'nvim-treesitter/nvim-treesitter'
  -- text objects based on tree-sitter
  use 'nvim-treesitter/nvim-treesitter-textobjects'
  use 'norcalli/nvim-colorizer.lua'
  use 'bluz71/vim-nightfly-guicolors'
  use 'romgrk/barbar.nvim'
  use 'glepnir/galaxyline.nvim'
  use 'b3nj5m1n/kommentary'
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }
  use 'nvim-telescope/telescope-media-files.nvim'
  use { 'christianchiarulli/nvcode-color-schemes.vim'  }
  -- use 'chrisbra/unicode.vim'

  --[[ use { 'ashinkarov/nvim-agda',
  } ]]

end)

--[[
use {
  'myusername/example',        -- The plugin location string
  -- The following keys are all optional
  disable = boolean,           -- Mark a plugin as inactive
  as = string,                 -- Specifies an alias under which to install the plugin
  installer = function,        -- Specifies custom installer. See "custom installers" below.
  updater = function,          -- Specifies custom updater. See "custom installers" below.
  after = string or list,      -- Specifies plugins to load before this plugin. See "sequencing" below
  rtp = string,                -- Specifies a subdirectory of the plugin to add to runtimepath.
  opt = boolean,               -- Manually marks a plugin as optional.
  branch = string,             -- Specifies a git branch to use
  tag = string,                -- Specifies a git tag to use
  commit = string,             -- Specifies a git commit to use
  lock = boolean,              -- Skip this plugin in updates/syncs
  run = string or function,    -- Post-update/install hook. See "update/install hooks".
  requires = string or list,   -- Specifies plugin dependencies. See "dependencies".
  rocks = string or list,      -- Specifies Luarocks dependencies for the plugin
  config = string or function, -- Specifies code to run after this plugin is loaded.
  -- The setup key implies opt = true
  setup = string or function,  -- Specifies code to run before this plugin is loaded.
  -- The following keys all imply lazy-loading and imply opt = true
  cmd = string or list,        -- Specifies commands which load this plugin.
  ft = string or list,         -- Specifies filetypes which load this plugin.
  keys = string or list,       -- Specifies maps which load this plugin. See "Keybindings".
  event = string or list,      -- Specifies autocommand events which load this plugin.
  fn = string or list          -- Specifies functions which load this plugin.
  cond = string, function, or list of strings/functions,   -- Specifies a conditional test to load this plugin
  module = string or list      -- Specifies patterns (e.g. for string.match) of Lua module names which, when required, load this plugin
}
--]]
