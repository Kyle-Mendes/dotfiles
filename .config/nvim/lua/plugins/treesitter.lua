return {
	{
		'nvim-treesitter/nvim-treesitter',
		lazy = false,
		build = ':TSUpdate',
		opts = function()
			require('config.treesitter')
		end,
	}
}
