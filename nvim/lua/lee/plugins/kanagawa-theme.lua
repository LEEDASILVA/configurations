return {
	"rebelot/kanagawa.nvim",
	-- make sure it is loaded on startup
	lazy = false,
	-- load before other plugins
	priority = 1000,
	confi = function()
		vim.cmd.colorscheme("kanagawa")
	end,
}
