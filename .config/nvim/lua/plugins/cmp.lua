return {
	{
		'saghen/blink.cmp',
		version = "1.*",
		-- optional: provides snippets for the snippet source
		dependencies = {
			'rafamadriz/friendly-snippets',
			-- 'Kaiser-Yang/blink-cmp-avante',
		},
		opts = {
			keymap = {
				preset = 'enter',
				["<Tab>"] = {
					"snippet_forward",
					function() -- sidekick next edit suggestion
						return require("sidekick").nes_jump_or_apply()
					end,
					function() -- if you are using Neovim's native inline completions
						return vim.lsp.inline_completion.get()
					end,
					"fallback",
				},
			},
			sources = {
				-- default = { 'avante', 'lsp', 'path', 'buffer' },
				default = { 'lsp', 'path', 'buffer' },
				-- providers = {
				-- 	avante = {
				-- 		module = 'blink-cmp-avante',
				-- 		name = 'Avante',
				-- 	}
				-- },
			},
		},
		opts_extend = { 'sources.default' }
	},
}
