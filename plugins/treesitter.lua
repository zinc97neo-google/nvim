local tree_sitter = {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  config = function()
    require'nvim-treesitter.configs'.setup({
      -- A list of parser names, or "all" (the listed parsers MUST always be installed)
      ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "rust" },
      -- Install parsers synchronously (only applied to `ensure_installed`)
      sync_install = false,
    })
  end,
}
local tree_sitter_context = {
  'nvim-treesitter/nvim-treesitter-context',
  lazy = false,
  config = function()
    require('treesitter-context').setup({
      enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
      max_lines = 0, -- How many lines the window should span. Values <= 0 mean no limit.
      min_window_height = 0, -- Minimum editor window height to enable context. Values <= 0 mean no limit.
      line_numbers = true,
      multiline_threshold = 20, -- Maximum number of lines to show for a single context
      trim_scope = 'outer', -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
      mode = 'cursor',  -- Line used to calculate context. Choices: 'cursor', 'topline'
      -- Separator between context and content. Should be a single character string, like '-'.
      -- When separator is set, the context will only show up when there are at least 2 lines above cursorline.
      separator = nil,
      zindex = 20, -- The Z-index of the context window
      on_attach = nil, -- (fun(buf: integer): boolean) return false to disable attaching
    })
  end
} 
treesitter = {
  tree_sitter,
  tree_sitter_context,
}
