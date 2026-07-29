return {
	{
		"neovim/nvim-lspconfig",
		config = function()
			-- global LSP-Keymaps
			vim.api.nvim_create_autocmd("LspAttach", {
				group = vim.api.nvim_create_augroup("UserLspKeymaps", { clear = true }),
				callback = function(ev)
					local opts = { buffer = ev.buf, silent = true, noremap = true }

					-- Navigation
					-- Go to definition
					vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
					-- Go to declaration
					vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
					-- Go to implementation
					vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
					-- show to reference
					vim.keymap.set("n", "gr", vim.lsp.buf.references)
					-- Show type definition
					vim.keymap.set("n", "gt", vim.lsp.buf.type_definition)

					-- Information
					-- Show documentation
					vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
					-- Signature help
					vim.keymap.set("i", "<C-k>", vim.lsp.buf.signature_help)

					-- Refactor
					-- Code actions
					vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
					-- Rename
					vim.keymap.set("n", "<C-r><C-r>", vim.lsp.buf.rename, opts)
					-- Formatting
					vim.keymap.set("n", "<C-k><C-d>", vim.lsp.buf.format)
				end,
			})

			-- Servers
			require("lsp.clangd")
			require("lsp.lua_ls")
			require("lsp.omnisharp")
			require("lsp.pyright")
			require("lsp.bashls")
			require("lsp.texlab")
			require("lsp.rust_analyzer")
		end,
	},
}
