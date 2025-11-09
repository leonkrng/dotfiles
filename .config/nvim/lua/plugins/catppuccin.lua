return {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()

      local hour = tonumber(os.date("%H"))

      if hour >= 20 or hour < 9 then
        vim.cmd.colorscheme("catppuccin-frappe")
      else
        vim.cmd.colorscheme("catppuccin-latte")
      end
    end,
  }
}
