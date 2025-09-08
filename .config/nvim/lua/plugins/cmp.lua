return {
	{
		'saghen/blink.cmp',
		version = "1.*",
		-- optional: provides snippets for the snippet source
		dependencies = { 'rafamadriz/friendly-snippets' },
		opts = {
			keymap = { preset = 'enter' },
		},
		opts_extend = { 'sources.default' }
	},
}
