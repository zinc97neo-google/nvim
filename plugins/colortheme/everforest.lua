if vim.g.neovide then
  vim.o.background = "light"
  local everforest = require("everforest")
  require("everforest").setup({
    background = "hard",
    italics = true,
  })
  everforest.load()
end
