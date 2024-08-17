vim.g.mapleader = " "

local function setup_keybindings()
	local k = vim.keymap
	local options = { noremap = true, silent = true }
	-- ------ insertion mode ------ --
	k.set("i", "jj", "<ESC><cmd>wa<cr>", options)
	-- ------   visual mode  ------ --
	k.set("v", "J", ":m '>+1<CR>gv=gv", options)
	k.set("v", "K", ":m '<-2<CR>gv=gv", options)
	-- ------   normal mode  ------ --
	-- window --
	k.set("n", "<c-h>", "<c-w>h", options)
	k.set("n", "<c-j>", "<c-w>j", options)
	k.set("n", "<c-k>", "<c-w>k", options)
	k.set("n", "<c-l>", "<c-w>l", options)
	k.set("n", "<c-up>", "<cmd>resize +2<cr>", options)
	k.set("n", "<c-down>", "<cmd>resize -2<cr>", options)
	k.set("n", "<c-left>", "<cmd>vertical resize -2<cr>", options)
	k.set("n", "<c-right>", "<cmd>vertical resize +2<cr>", options)
	k.set("n", "<leader>s", "<c-w>s", options)
	k.set("n", "<leader>v", "<c-w>v", options)
	-- file --
	k.set("n", "<c-a>", "<cmd>wa<cr>", options)
	k.set("n", "<leader>qq", "<cmd>qa<cr>", options)
	k.set("n", "<leader>hh", "<cmd>nohlsearch<cr>", options)
	-- neo-tree --
	k.set("n", "<leader>e", "<cmd>Neotree toggle<cr>", options)
	-- bufferline --
	k.set("n", "<S-L>", "<cmd>BufferLineCycleNext<cr>", options)
	k.set("n", "<S-H>", "<cmd>BufferLineCyclePrev<cr>", options)
	-- term
	k.set("n", "<c-\\>", "<cmd>ToggleTerm<cr>", options)
	k.set("n", "[c", function()
		require("treesitter-context").go_to_context(vim.v.count1)
	end, options)
	-- ------  terminal mode ------ --
	k.set("t", "<c-\\>", "<cmd>ToggleTerm<cr>", options)
end

setup_keybindings()
