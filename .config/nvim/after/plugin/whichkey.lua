local wk = require("which-key")

wk.register({
	f = {
		name = "file",
		f = {"<cmd>Telescope find_files<cr>", "Telescope -- Find Files"},
		b = {"<cmd>Telescope buffers<cr>", "Telescope -- Find Buffers"},
		w = {"<cmd>Telescope live_grep<cr>", "Telescope -- Live Grep"},
		h = {"<cmd>Telescope help_tags<cr>", "Telescope -- Help Tags"},
		o = {"<cmd>Telescope oldfiles<cr>", "Telescope -- Old Files"},
		g = {"<cmd>Telescope git_files<cr>", "Telescope -- Git Files"},
	},
    g = {
        b = { "<cmd>Gitsigns toggle_current_line_blame<cr>", "Toggle showing git blame" },
        d = "LSP - Definition",
        r = "LSP - References",
        l = {
            c = {"<cmd>GH<cr>", 'Copy Link GH for selection'}
        },
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
}, { prefix = "<leader>"} )
