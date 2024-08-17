local function init_lazy()
  local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
  if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
      vim.api.nvim_echo({
        { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
        { out, "WarningMsg" },
        { "\nPress any key to exit..." },
      }, true, {})
      vim.fn.getchar()
      os.exit(1)
    end
  end
  vim.opt.rtp:prepend(lazypath)
end

local function get_plugins()
  local plugins = {
    -- colortheme
    {
      "neanias/everforest-nvim",
      version = false,
      lazy = true,
      priority = 1000,
    },
    { 
      "catppuccin/nvim", 
      name = "catppuccin", 
      lazy = true,
      priority = 1000 
    },
    {
      'nvim-lualine/lualine.nvim',
      dependencies = { 'nvim-tree/nvim-web-devicons' },
      lazy = true,
      priority = 1000 
    }
  }
  return plugins
end

init_lazy()
require("lazy").setup(get_plugins(), {})
