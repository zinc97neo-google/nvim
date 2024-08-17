if vim.g.neovide then
  vim.g.neovide_cursor_animation_length = 0.12
  vim.g.neovide_fullscreen = true
  local custom_path = "C:\\Users\\zhang\\AppData\\Local\\nvim\\?.lua"
  package.path = custom_path .. ";" .. package.path
end

require("core.keymaps")
require("core.options")
require("plugins.setup")

-- plugins --
require("plugins.colortheme.everforest")
require("plugins.colortheme.catppuccin")
require("plugins.lualine")
