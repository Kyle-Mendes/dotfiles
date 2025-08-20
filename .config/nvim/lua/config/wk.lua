local wk = require("which-key")
local Snacks = require('snacks')

wk.add({
	{ "<leader>q", group = "persistence" },	
	{ "<leader>qs", function() require("persistence").load() end, desc = "Load session for directory" },
	{ "<leader>qS", function() require("persistence").select() end, desc = "Select session to load" },
	{ "<leader>ql", function() require("persistence").load({ last = true }) end, desc = "Load last session" },
	{ "<leader>qd", function() require("persistence").stop() end, desc = "Stop persistence" },

	-- Snacks Commands
	{ "<leader>ss", group = "snacks" },
	{ "<leader>ssd", group = "dim" },
	{ "<leader>ssdd", function() Snacks.dim.disable() end, desc = "Disable Dim" },
	{ "<leader>ssde", function() Snacks.dim.enable() end, desc = "Enable Dim" },
  { "<leader>.",  function() Snacks.scratch() end, desc = "Toggle Scratch Buffer" },
  { "<leader>S",  function() Snacks.scratch.select() end, desc = "Select Scratch Buffer" },

	{ "fw", function() Snacks.picker.grep() end, desc = "Grep" },
	{ "<leader>fo", function() Snacks.picker.recent() end, desc = "Recent Files" },
	{ "<leader>su", function() Snacks.picker.undo() end, desc = "Undo History" },

	-- LSP Commands
	{ "gd", function() vim.lsp.buf.type_definition() end, desc = "Goto Definition" },
	{ "gl", function() vim.diagnostic.open_float({ width = 128}) end, desc = "Open floating vim diagnostic"},
	{ "<leader>la", function() vim.lsp.buf.code_action() end, desc = "Open Code Actions"},

	-- LOVE2d
	{ "<leader>vv", "<cmd>LoveRun<cr>", desc = "Run LOVE"},
	{ "<leader>vs", "<cmd>LoveStop<cr>", desc = "Stop LOVE"},
})
