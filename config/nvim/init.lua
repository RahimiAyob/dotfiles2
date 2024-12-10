require("core.keymaps")
require("core.plugins")
require("core.plugin_config.nvim-tree")
require("core.plugin_config.fzf")
require("core.plugin_config.treesitter")
require("mason").setup()
-- LSP Setup
local lspconfig = require("lspconfig")

-- Clangd configuration
lspconfig.clangd.setup({
  on_attach = function(client, bufnr)
    -- Key mappings, options, etc. go here
    -- Example:
    local bufopts = { noremap=true, silent=true, buffer=bufnr }
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
    vim.keymap.set("n", "gr", vim.lsp.buf.references, bufopts)
  end,
  flags = {
    debounce_text_changes = 150,
  },
})









































