local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  if packer_bootstrap then
    require('packer').sync()
  end

	use 'https://github.com/nvim-tree/nvim-tree.lua.git'
	use { 
    "ibhagwan/fzf-lua",
    requires = { "nvim-tree/nvim-web-devicons" }
  }
	use 'https://github.com/nvim-telescope/telescope.nvim.git'
  -- use {
  --       'nvim-treesitter/nvim-treesitter',
  --       run = function()
  --           local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
  --           ts_update()
  --       end,
  -- }
	use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }
end)


--colorscheme embark
