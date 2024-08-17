local toggleterm = {
  'akinsho/toggleterm.nvim',
  version = "*",
  lazy = false,
  config = function()
    require("toggleterm").setup({
      direction = "float",
      shell = "nu"
    })
  end
}

local gitsigns = {
  'lewis6991/gitsigns.nvim',
  lazy = false,
  config = function()
    require('gitsigns').setup()
  end,
}

local git_messenger = {
  'rhysd/git-messenger.vim',
  lazy = false,
}

editor = {
  toggleterm,
  gitsigns,
  git_messenger
}
