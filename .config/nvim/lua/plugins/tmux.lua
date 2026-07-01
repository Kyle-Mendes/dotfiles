return {
	-- Seamless C-h/j/k/l navigation between nvim splits and tmux panes.
	-- Pairs with the matching bindings in ~/.config/tmux/tmux.conf.
	"christoomey/vim-tmux-navigator",
	cmd = {
		"TmuxNavigateLeft",
		"TmuxNavigateDown",
		"TmuxNavigateUp",
		"TmuxNavigateRight",
		"TmuxNavigatePrevious",
	},
	keys = {
		{ "<c-h>", "<cmd>TmuxNavigateLeft<cr>" },
		{ "<c-j>", "<cmd>TmuxNavigateDown<cr>" },
		{ "<c-k>", "<cmd>TmuxNavigateUp<cr>" },
		{ "<c-l>", "<cmd>TmuxNavigateRight<cr>" },
		{ "<c-\\>", "<cmd>TmuxNavigatePrevious<cr>" },
	},
}
