local toggleterm = {
  'akinsho/toggleterm.nvim',
  version = "*",
  lazy = false,
  config = function()
    require("toggleterm").setup({
      direction = "float",
    })
  end
}

editor = {
  toggleterm
}
