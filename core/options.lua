local function setup_vim_opts()
	local o = vim.opt
	o.relativenumber = true
	o.cursorline = true
	o.number = true
	o.shiftwidth = 2
	o.tabstop = 2
	o.expandtab = true
	o.ignorecase = true
	o.swapfile = false
	o.list = true
	o.wrap = false
	o.listchars = {
		eol = "",
		space = "·",
		tab = "->",
	}
	o.clipboard:append("unnamedplus")
	o.splitright = true
	o.splitbelow = true
	o.termguicolors = true
	o.signcolumn = "yes"
end

setup_vim_opts()
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function()
		vim.cmd("Neoformat")
	end,
})
