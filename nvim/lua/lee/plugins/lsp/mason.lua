-- return {
-- 	"williamboman/mason.nvim",
-- 	dependencies = {
-- 		"williamboman/mason-lspconfig.nvim",
-- 		"WhoIsSethDaniel/mason-tool-installer.nvim",
-- 	},
-- 	config = function()
-- 		-- import mason
-- 		local mason = require("mason")
--
-- 		-- import mason-lspconfig
-- 		local mason_lspconfig = require("mason-lspconfig")
--
-- 		local mason_tool_installer = require("mason-tool-installer")
--
-- 		-- enable mason and configure icons
-- 		mason.setup({
-- 			ui = {
-- 				icons = {
-- 					package_installed = "✓",
-- 					package_pending = "➜",
-- 					package_uninstalled = "✗",
-- 				},
-- 			},
-- 		})
--
-- 		mason_lspconfig.setup({
-- 			-- list of servers for mason to install
-- 			ensure_installed = {
-- 				"html",
-- 				"cssls",
-- 				"tailwindcss",
-- 				"svelte",
-- 				"lua_ls",
-- 				"graphql",
-- 				"emmet_ls",
-- 				"prismals",
-- 				"pyright",
-- 				"gopls",
--         "biome",
-- 			},
-- 		})
--
-- 		mason_tool_installer.setup({
-- 			ensure_installed = {
-- 				"prettier", -- prettier formatter
-- 				"stylua", -- lua formatter
--         "biome",
-- 				"eslint_d",
-- 			},
-- 		})
-- 	end,
-- }

return {
	"williamboman/mason.nvim",
	dependencies = {
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- import mason
		local mason = require("mason")
		local mason_tool_installer = require("mason-tool-installer")

		-- enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		-- only setup mason-tool-installer here
		mason_tool_installer.setup({
			ensure_installed = {
				"prettier",
				"stylua",
				"biome",
				"eslint_d",
			},
		})
	end,
}
