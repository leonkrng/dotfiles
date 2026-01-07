
local capabilities = require("cmp_nvim_lsp").default_capabilities()
require("lspconfig").rust_analyzer.setup({
  cmd = { "/usr/bin/rust-analyzer" },
  capabilities = capabilities,
  settings = {
    ["rust-analyzer"] = {
      cargo = { allFeatures = true },
      checkOnSave = true,
      procMacro = { enable = true },
    }
  }
})
