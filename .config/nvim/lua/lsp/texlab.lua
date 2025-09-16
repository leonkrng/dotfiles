require("lspconfig").texlab.setup({
    settings = {
        texlab = {
            build = { executable = "latexmk", args = { "-pdf", "-interaction=nonstopmode", "%f" } },
            forwardSearch = { executable = "zathura", args = { "--synctex-forward", "%l:1:%f", "%p" } },
        }
    }
})
