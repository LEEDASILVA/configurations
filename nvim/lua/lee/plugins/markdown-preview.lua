return {
	"iamcco/markdown-preview.nvim",
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	build = "cd app && npm install",
	init = function()
		vim.g.mkdp_filetypes = { "markdown" }
	end,
	ft = { "markdown" },
	config = function()
		vim.g.mkdp_auto_start = 0
		vim.g.mkdp_auto_close = 1
		vim.g.mkdp_refresh_slow = 0
		vim.g.mkdp_them = "dark"
		vim.g.mkdp_preview_options = {
			-- mermaid configuration
			maid = { theme = "dark" },
			disable_sync_scroll = 0,
			sync_scroll_type = "middle",
		}
	end,
	keys = {
		{ "<leader>mp", "<cmd>MarkdownPreview<cr>", desc = "Markdown preview" },
		{ "<leader>ms", "<cmd>MarkdownPreviewStop<cr>", desc = "Markdown previewStop" },
	},
}
