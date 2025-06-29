return {
  'neovim/nvim-lspconfig',
  config = function()
    require('lsp.clangd')
    require('lsp.lua_ls')
    require('lsp.omnisharp')
    require('lsp.pyright')
  end,
}
