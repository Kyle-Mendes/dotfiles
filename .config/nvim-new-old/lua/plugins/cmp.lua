return {
	{
		'saghen/blink.cmp',
		version = "1.*",
		-- optional: provides snippets for the snippet source
		dependencies = {
			'rafamadriz/friendly-snippets',
			'Kaiser-Yang/blink-cmp-avante',
		},
		opts = {
			keymap = { preset = 'enter' },
			sources = {
				default = { 'avante', 'lsp', 'path', 'buffer' },
				providers = {
					avante = {
						module = 'blink-cmp-avante',
						name = 'Avante',
					}
				},
			}
		},
		opts_extend = { 'sources.default' }
	},
}
