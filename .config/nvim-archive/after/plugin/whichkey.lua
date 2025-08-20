local wk = require("which-key")

-- Leader Keys
wk.register({
	f = {
		name = "file",
		f = {"<cmd>Telescope find_files<cr>", "Telescope -- Find Files"},
		b = {"<cmd>Telescope buffers<cr>", "Telescope -- Find Buffers"},
		w = {"<cmd>Telescope live_grep<cr>", "Telescope -- Live Grep"},
		h = {"<cmd>Telescope help_tags<cr>", "Telescope -- Help Tags"},
		o = {"<cmd>Telescope oldfiles<cr>", "Telescope -- Old Files"},
		g = {"<cmd>Telescope git_files<cr>", "Telescope -- Git Files"},
		r = {"<cmd>Telescope resume<cr>", "Telescope -- Resume"},
	},
  g = {
    b = { "<cmd>Gitsigns toggle_current_line_blame<cr>", "Toggle showing git blame" },
    d = "LSP - Definition",
    r = "LSP - References",
		l = {function() vim.diagnostic.open_float({ width = 128}) end, "Open floating vim diagnostic"},
    c = {
      c = {"<cmd>GH<cr>", 'Copy Link GH for selection'}
    },
		z = {"<cmd>lua vim.diagnostic.setqflist()<cr>", "Set quickfix list"},
  },
  p = {
    v = "open file explorer",
  },
  l = {
    a = "LSP - Code Actions",
    r = {
      n = "LSP - Rename",
    },
  },

	M = {"<cmd>Grapple tag<cr>", "Grapple tag"},
	m = {"<cmd>Grapple toggle_tags<cr>", "Grapple toggle_tags"}

}, { prefix = "<leader>"} )

wk.register({
  g = {
    d = "LSP - Definition",
    r = "LSP - References",
		l = {function() vim.diagnostic.open_float({width=128}) end, "Open floating vim diagnostic"},
  },

})
