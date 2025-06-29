return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects"
  },
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = {
        "bash", "bibtex", "c", "c_sharp", "cpp", "css", "http", "hyprlang", "java",
        "javascript", "json", "json5", "kotlin", "lua", "markdown", "markdown_inline",
        "python", "rust", "sql", "xml", "yaml",
      },
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<CR>",
          node_incremental = "<CR>",
          scope_incremental = "<S-CR>",
          node_decremental = "<BS>",
        },
      },
      textobjects = {
        select = {
          enable = true,
          lookahead = true,
          keymaps = {
            ["af"] = "@function.outer",
            ["if"] = "@function.inner",
            ["ac"] = "@class.outer",
            ["ic"] = "@class.inner",
          },
        },
      },
    })
    -- Arduino .ino-Dateien als C++ behandeln
    vim.filetype.add({
      extension = {
        ino = "cpp",
      },
    })
  end,
}
