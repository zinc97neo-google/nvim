if vim.g.neovide then
  vim.g.neovide_cursor_animation_length = 0.12
  vim.g.neovide_fullscreen = true
end

require("core.keymaps")
require("core.options")
