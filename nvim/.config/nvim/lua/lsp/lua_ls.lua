local lspconfig = require('lspconfig')

return function()
  lspconfig.lua_ls.setup {
    settings = {
      Lua = {
        runtime = {
          -- Lua Version, die Neovim benutzt
          version = 'LuaJIT',
          path = vim.split(package.path, ';'),
        },
        diagnostics = {
          globals = { 'vim' }, -- "vim" als globale Variable zulassen
        },
        workspace = {
          library = vim.api.nvim_get_runtime_file("", true), -- alle Neovim runtime Dateien einbeziehen
          checkThirdParty = false,
        },
        telemetry = {
          enable = false, -- Telemetrie deaktivieren
        },
      },
    },
    on_attach = function(client, bufnr)
      local opts = { noremap = true, silent = true }
      vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
      vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
      vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>ca', '<Cmd>lua vim.lsp.buf.code_action()<CR>', opts)
      vim.api.nvim_buf_set_keymap(bufnr, 'v', '<leader>ca', '<Cmd>lua vim.lsp.buf.range_code_action()<CR>', opts)
    end,
  }
end
