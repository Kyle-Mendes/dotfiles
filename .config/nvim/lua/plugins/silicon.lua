return {
	{
		"michaelrommel/nvim-silicon",
		lazy = true,
		cmd = "Silicon",
		config = function()
			require("silicon").setup({
				-- Configuration here, or leave empty to use defaults
				font = "Maple Mono NF=22",
				to_clipboard = true,
				tab_width = 2,
				-- theme = '~/.config/silicon/themes/rose-pine.tmTheme',
				-- background='#b4637a', -- pink
				-- background='#286983', -- green
				background = '#fff0', -- green
				language = function()
					return vim.bo.filetype
				end,
				line_offset = function(args)
					return args.line1
				end,
				window_title = function()
					return vim.fn.fnamemodify(vim.api.nvim_buf_get_name(vim.api.nvim_get_current_buf()), ":t")
				end,
			})
		end
	},
}
