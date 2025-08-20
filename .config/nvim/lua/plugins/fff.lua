return {
	{
  	"dmtrKovalenko/fff.nvim",
  	build = "cargo build --release",
  	-- or if you are using nixos
  	-- build = "nix run .#release",
		opts = {
			prompt = "🌸",
			layout = {
    		prompt_position = 'top',              -- Position of prompt ('top' or 'bottom')
    		preview_position = 'left',           -- Position of preview ('right' or 'left')
    		preview_width = 0.4,                  -- Width of preview pane
    		height = 0.8,                         -- Window height
    		width = 0.8,                          -- Window width
  		},
		},
		-- config = function() 
		-- 	require("fff").setup({
		-- 		prompt = "🌸",
		-- 		layout = {
		-- 			prompt_position = 'top',
		-- 		},
		-- 	})
		-- end,
  	keys = {
    	{
      	"ff", -- try it if you didn't it is a banger keybinding for a picker
      	function()
        	require("fff").find_files() -- or find_in_git_root() if you only want git files
      	end,
      	desc = "Open file picker",
    	},
    	{
      	"fg", -- try it if you didn't it is a banger keybinding for a picker
      	function()
        	require("fff").find_in_git_root() -- or find_in_git_root() if you only want git files
      	end,
      	desc = "Open git file picker",
    	},
  	},
	}
}
