colortheme = {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme "catppuccin-macchiato"
  end,
}

lualine = {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  lazy = false,
  priority = 1000,
  config = function()
    require('lualine').setup()
  end,
}

neo_tree = {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      window = {
        position = "right",
        width = 28,
      }
    })
  end,
}

visual = {
  colortheme,
  lualine,
  neo_tree
}
