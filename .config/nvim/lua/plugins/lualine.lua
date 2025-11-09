return {
  "nvim-lualine/lualine.nvim",
  config = function()
    local hour = tonumber(os.date("%H"))
    local theme

    if hour >= 20 or hour < 9 then
      theme = 'dracula'
    else
      theme = 'onelight'
    end

    require('lualine').setup({
      options = {
        theme = theme,
      },
    })
  end,
}
