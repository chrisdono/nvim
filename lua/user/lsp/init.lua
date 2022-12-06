-- local status_ok, _ = pcall(require, "lspconfig")
-- if not status_ok then
-- 	return
-- end
-- 
-- require("user.lsp.lsp-installer")
-- require("user.lsp.handlers").setup()
local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
  'pyright',
  'jsonls',
})

lsp.nvim_workspace()
lsp.setup()
