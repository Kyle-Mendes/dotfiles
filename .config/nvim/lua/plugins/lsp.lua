return {
	{
		"neovim/nvim-lspconfig",
		config = function()
			-- Format on Save
			vim.api.nvim_create_autocmd("BufWritePre", {
        pattern = "*",
        callback = function()
          vim.lsp.buf.format({ async = false })
        end,
      })
			-- Language Server Configs
			require'lspconfig'.basedpyright.setup({
				settings = {
					basedpyright = {
						analysis = {
							extraPaths = {
 								'~/.virtualenvs/discord_api/lib/python3.7/site-packages',
          			'/Users/pink/Projects/discord/discord/discord_common/py'
							}
						}
					}
				}
			})

			require'lspconfig'.eslint.setup({
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
					'deno',
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
				}
			})
		end
	},
}
