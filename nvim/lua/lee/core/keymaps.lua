vim.g.mapleader = " "

local keymap = vim.keymap

vim.api.nvim_set_keymap("n", "<Leader><Leader>", "<cmd>Explore<cr>", { noremap = true })
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- window management
-- split window vertically
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
-- split window horizontally
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
-- make split windows equal width & height
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
-- close current split window
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- tab management
keymap.set("n", "<leader>tn", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })
keymap.set("n", "<C-l>", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<C-h>", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
-- keymap.set("n", "<C-S-l>", "<cmd>tabmove +1<CR>", { desc = "move the current tab right" })
-- keymap.set("n", "<C-S-h>", "<cmd>tabmove -1<CR>", { desc = "move the current tab left" })

-- Function to toggle the display of dots for spaces
function ToggleWhitespace()
	if vim.opt.list:get() then
		vim.opt.list = false
	else
		vim.opt.list = true
		vim.opt.listchars:append("space:·")
	end
end

vim.api.nvim_set_keymap("n", "<leader>s.", ":lua ToggleWhitespace()<CR>", { noremap = true, silent = true })

-- move line of code up or down
keymap.set("n", "<A-j>", ":m .+1<CR>==") -- move line up(n)
keymap.set("n", "<A-k>", ":m .-2<CR>==") -- move line down(n)
keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv") -- move line up(v)
keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv") -- move line down(v)

-- open flowting window
local function open_cheatsheet_float()
	local buf = vim.api.nvim_create_buf(false, true)

	local file = vim.fn.expand("~/.config/nvim/cheatsheets/nvim-cheatsheet.md")
	local lines = vim.fn.readfile(file)
	vim.api.nvim_buf_set_lines(buf, 0, -1, false, lines)

	-- if i want to do something with the window
	local width = math.floor(vim.o.columns * 0.8)
	local height = math.floor(vim.o.lines * 0.8)
	local row = math.floor((vim.o.lines - height) / 2)
	local col = math.floor((vim.o.columns - width) / 2)
	local opts = {
		style = "minimal",
		relative = "editor",
		width = width,
		height = height,
		row = row,
		col = col,
		border = "rounded",
	}
	local win = vim.api.nvim_open_win(buf, true, opts)

	vim.keymap.set("n", "q", "<cmd>close<CR>", { buffer = buf, nowait = true })
end

-- Map the function to a shortcut
keymap.set("n", "<leader>cs", open_cheatsheet_float, { desc = "Open Neovim Cheat Sheet (Floating)" })
