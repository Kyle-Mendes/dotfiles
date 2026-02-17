require("config.constants")
return {
	{
		"rose-pine/neovim",
		lazy = true,
		priority = priorities.THEMES,
		name = "rose-pine",
		config = function()
			-- vim.cmd("colorscheme rose-pine-main")
		end
	},
	{
		"vague2k/vague.nvim",
		lazy = false,
		priority = priorities.THEMES,
		name = "vague",
		-- config = function()
		-- 	require("vague").setup({
		--     	-- optional configuration here
		--   	})
		--   	vim.cmd("colorscheme vague")
		-- end
	},
	{
		"rijulpaul/nightblossom.nvim",
		name = "nightblossom",
		lazy = false,
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
			vim.cmd("colorscheme nightblossom-pastel")
		end,
	}
}
