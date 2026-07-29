local lspconfig = require("lspconfig")

return function()
    lspconfig.pyright.setup({
        on_attach = function(client, bufnr)
            local opts = { noremap = true, silent = true }
        end,
    })
end
