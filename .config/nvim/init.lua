local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("vim-options")
require("lazy").setup("plugins")


local servers = {
  "pyright",
  "lua_ls",
  "clangd",
}

for _, server in ipairs(servers) do
  local ok, setup = pcall(require, "lsp." .. server)
  if ok and type(setup) == "function" then
    setup()
  end
end
