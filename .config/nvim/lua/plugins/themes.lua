require("config.constants")
local theme = "teide"

return {
	{
		"rose-pine/neovim",
		lazy = theme ~= 'rose',
		priority = priorities.THEMES,
		name = "rose-pine",
		config = function()
			if theme == 'rose' then
				vim.cmd("colorscheme rose-pine-main")
			end
		end
	},
	{
		"vague2k/vague.nvim",
		lazy = theme ~= 'vague',
		priority = priorities.THEMES,
		name = "vague",
		config = function()
			require("vague").setup({
				-- optional configuration here
			})
			if theme == 'vague' then
				vim.cmd("colorscheme vague")
			end
		end
	},
	{
		"rijulpaul/nightblossom.nvim",
		name = "nightblossom",
		lazy = theme ~= 'nightblossom',
		priority = 1000,
		config = function()
			require('nightblossom').setup({
				variant = "pastel",
				overrides = {
					colors = {
						bg = "#23202b"
					}
				}
			})
			if theme == 'nightblossom' then
				vim.cmd("colorscheme nightblossom-pastel")
			end
		end,
	},
	{
		"oskarnurm/koda.nvim",
		lazy = theme ~= 'koda',
		priority = priorities.THEMES,
		name = "koda",
		config = function()
			if theme == 'koda' then
				require("koda").setup({
					styles = {
						comments = { italic = true },
						keywords = { italic = true },
					}
				})
				vim.cmd("colorscheme koda")
			end
		end
	},
	{
		"serhez/teide.nvim",
		lazy = theme ~= 'teide',
		priority = priorities.THEMES,
		name = "teide",
		config = function()
			if theme == 'teide' then
				vim.cmd("colorscheme teide-dimmed")
			end
		end
	},
}
