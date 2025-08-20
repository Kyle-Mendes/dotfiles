-- basedpyright config
local Snacks = require('snacks')
Snacks.debug('Setting up basedpyright')

require'lspconfig'.basedpyright.setup({
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
}

