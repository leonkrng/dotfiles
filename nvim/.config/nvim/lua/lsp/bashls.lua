local lspconfig = require('lspconfig')

lspconfig.bashls.setup({
  capabilities = require("cmp_nvim_lsp").default_capabilities(),
})

