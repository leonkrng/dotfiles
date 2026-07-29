return {
    {
        "kevinhwang91/nvim-ufo",
        dependencies = { "kevinhwang91/promise-async" },
        config = function()
            vim.o.foldcolumn = "1"
            vim.o.foldlevel = 99
            vim.o.foldlevelstart = 99
            vim.o.foldenable = true

            require("ufo").setup({
                provider_selector = function()
                    return { "lsp", "indent" }
                end,
            })

            vim.keymap.set("n", "<leader>fc", "zc", { silent = true, desc = "Fold: close" })
            vim.keymap.set("n", "<leader>fo", "zo", { silent = true, desc = "Fold: open" })
            vim.keymap.set("n", "<leader>fa", "za", { silent = true, desc = "Fold: toggle" })

            vim.keymap.set("n", "<leader>fO", function()
                require("ufo").openAllFolds()
            end, { silent = true, desc = "Fold: open all" })
            vim.keymap.set("n", "<leader>fC", function()
                require("ufo").closeAllFolds()
            end, { silent = true, desc = "Fold: close all" })

            vim.keymap.set("n", "<leader>fp", function()
                require("ufo").peekFoldedLinesUnderCursor()
            end, { silent = true, desc = "Fold: peek" })
        end,
    },
}
