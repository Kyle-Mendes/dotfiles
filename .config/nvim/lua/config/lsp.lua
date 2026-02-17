-- basedpyright config
require 'lspconfig'.basedpyright.setup({
	settings = {
		python = {
			analysis = {
				extraPaths = {
					'~/.virtualenvs/discord_api/lib/python3.7/site-packages',
					'/Users/pink/Projects/discord/discord/discord_common/py'
				}
			}
		}
	}
})

-- ts
require 'lspconfig'.ts_ls.setup({
	settings = {
		javascript = {
			tsserver = {
				maxTsServerMemory = 16184
			}
		},
		typescript = {
			tsserver = {
				maxTsServerMemory = 16184
			}
		}
	}
})
