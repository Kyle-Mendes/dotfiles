require("config.constants")
return {
	{
  	"folke/which-key.nvim",
  	event = "VeryLazy",
		priority = priorities.SETUP,
  	opts = {
    	-- your configuration comes here
    	-- or leave it empty to use the default settings
    	-- refer to the configuration section below
  	},
  	keys = {
    	{
      	"<leader>?",
      	function()
        	require("which-key").show({ global = false })
      	end,
      	desc = "Buffer Local Keymaps (which-key)",
    	},
  	},
	}
}
