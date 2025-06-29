local lspconfig = require('lspconfig')

return function()
  lspconfig.pyright.setup {
    on_attach = function(client, bufnr)
      local opts = { noremap = true, silent = true }
      vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
      vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
      vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>ca', '<Cmd>lua vim.lsp.buf.code_action()<CR>', opts)
      vim.api.nvim_buf_set_keymap(bufnr, 'v', '<leader>ca', '<Cmd>lua vim.lsp.buf.range_code_action()<CR>', opts)
    end,
  }
end
