
return {
  {
    "numToStr/Comment.nvim",
    opts = {
      mappings = {
        basic = false,
        extra = false,
      },
    },
    config = function(_, opts)
      require("Comment").setup(opts)

      local api = require("Comment.api")
      local map_opts = { noremap = true, silent = true }

      -- Normal Mode: aktuelle Zeile kommentieren / entkommentieren
      vim.keymap.set("n", "<C-k>c", api.comment.linewise.current, map_opts)
      vim.keymap.set("n", "<C-k>u", api.uncomment.linewise.current, map_opts)

      -- Visual Mode: Auswahl kommentieren / entkommentieren
      vim.keymap.set(
        "v",
        "<C-k>c",
        "<ESC><CMD>lua require('Comment.api').comment.linewise(vim.fn.visualmode())<CR>",
        map_opts
      )
      vim.keymap.set(
        "v",
        "<C-k>u",
        "<ESC><CMD>lua require('Comment.api').uncomment.linewise(vim.fn.visualmode())<CR>",
        map_opts
      )
    end,
  },
}
