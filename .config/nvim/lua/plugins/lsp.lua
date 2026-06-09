return {
	{
		"neovim/nvim-lspconfig",
		-- We have another plugin for this
		opts = { diagnostics = { virtual_text = false } },
		config = function()
			-- Format on Save
			vim.api.nvim_create_autocmd("BufWritePre", {
				pattern = "*",
				callback = function()
					vim.lsp.buf.format({ async = false })
				end,
			})
			-- Language Server Configs
			require 'lspconfig'.basedpyright.setup({
				settings = {
					basedpyright = {
						analysis = {
							extraPaths = {
								'~/.virtualenvs/discord_api/lib/python3.11/site-packages',
								'/Users/pink/Projects/discord/discord/discord_common/py'
							}
						}
					}
				}
			})

			require 'lspconfig'.eslint.setup({
				on_attach = function(client, buffer)
					vim.api.nvim_create_autocmd("BufWritePre", {
						buffer = buffer,
						command = "EslintFixAll"
					})
				end
			})
		end

	},
	{ "mason-org/mason.nvim", opts = {},
	},
	{
		"mason-org/mason-lspconfig.nvim",
		dependencies = { "mason-org/mason.nvim", "neovim/nvim-lspconfig" },
		config = function()
			require('mason-lspconfig').setup()
		end
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		config = function()
			require('mason-tool-installer').setup({
				ensure_installed = {
					-- lua
					'lua-language-server',

					-- js/ts
					-- 'deno',
					'eslint_d',
					'prettierd',
					'typescript-language-server',

					-- python
					'basedpyright',
					-- 'flake8',
					-- 'mypy',
					'ruff',

					--rust
					'rustfmt',

					-- etc
					'stylelint',
					'copilot-language-server',
				}
			})
		end
	},
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				-- lua = { "stylua" },
				-- -- Conform will run multiple formatters sequentially
				python = { "ruff_format", "ruff_organize_imports" },
				-- -- You can customize some of the format options for the filetype (:help conform.format)
				-- rust = { "rustfmt", lsp_format = "fallback" },
				-- Conform will run the first available formatter
				javascript = { "prettierd", "prettier", stop_after_first = true },
				typescript = { "prettierd", "prettier", stop_after_first = true },
				javascriptreact = { "prettierd", "prettier", stop_after_first = true },
				typescriptreact = { "prettierd", "prettier", stop_after_first = true },
				["*"] = { "trim_whitespace" }
			},
			format_on_save = {
				-- These options will be passed to conform.format()
				timeout_ms = 500,
				lsp_format = "fallback",
			},
		}
	},
	{
		"j-hui/fidget.nvim",
		opts = {},
	}
}
