local lspconfig = require('lspconfig')

lspconfig.omnisharp.setup {
  cmd = { "/usr/bin/omnisharp", "--languageserver", "--hostPID", tostring(vim.fn.getpid()) },
  capabilities = require("cmp_nvim_lsp").default_capabilities(),
}
