return {
		{ 'nvim-lua/plenary.nvim' },
    { 
        "fuchsia-studios/acorn",
        dev = true,
        -- config = function()
        --     require("acorn").setup({
        --     })
        --     vim.cmd("colorscheme acorn")
        -- end
    },
    -- {
    --     "fuchsia-studios/tododo",
    --     dev = true,
		-- 		dependencis = {
		-- 			'nvim-lua/plenary.nvim'
		-- 		},
    --     config = require('tododo').setup({})
    -- },
    { "machakann/vim-sandwich" },

    -- Noice
    {
        "folke/noice.nvim",
        dependencies = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        }
    },
    {
        'rose-pine/neovim',
        name = 'rose-pine',
        lazy = false,
        priority = 1000,
        config = function()
            require("rose-pine").setup({
                dark_variant = "moon",
            })
            vim.cmd("colorscheme rose-pine")
        end
    },
    {
        "nvim-treesitter/playground",
        cmd = { "TSPlayground", "TSPlay" }, -- lazy loads on these commands
    },
    { "ThePrimeagen/harpoon" },
    { "tpope/vim-fugitive" },
    {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup({
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            })
        end,
    },
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup {
                signs = {
                    add = { text = "▎" },
                    change = { text = "▎" },
                    delete = { text = "▎" },
                    topdelete = { text = "契" },
                    changedelete = { text = "▎" },
                    untracked = { text = "▎" },
                },
                current_line_blame_opts = {
                    virt_text = true,
                    virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
                    delay = 10,
                    ignore_whitespace = false,
                },
                current_line_blame_formatter = '<author>, <author_time:%Y-%m-%d> - <summary>',
            }
        end
    },
    {
        'ruifm/gitlinker.nvim',
        config = function() require"gitlinker".setup() end

    },

    -- Autopairs
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = function() require("nvim-autopairs").setup() end
    },

    -- Colorizor
    { 'norcalli/nvim-colorizer.lua' },

    -- LSP Zero
    { "VonHeikemen/lsp-zero.nvim", branch = 'v1.x' },
    { "nvim-lua/lsp-status.nvim" }, -- LSP Status for Heirline

    -- Icons
    { "nvim-tree/nvim-web-devicons" },

    -- LSP Support
    { 'neovim/nvim-lspconfig' }, -- Required
    { 'jose-elias-alvarez/null-ls.nvim' }, -- Null-ls
    { 'jay-babu/mason-null-ls.nvim' }, -- Null-ls mason bridge
    { 'williamboman/mason.nvim' }, -- Optional
    { 'williamboman/mason-lspconfig.nvim' }, -- Optional

    -- Autocompletion Engine
    { 'hrsh7th/nvim-cmp' }, -- Required
    { 'hrsh7th/cmp-nvim-lsp' }, -- Required
    { 'hrsh7th/cmp-buffer' }, -- Optional
    { 'hrsh7th/cmp-path' }, -- Optional
    { 'saadparwaiz1/cmp_luasnip' }, -- Optional
    { 'hrsh7th/cmp-nvim-lua' }, -- Optional

    -- Snippets
    { 'L3MON4D3/LuaSnip' }, -- Required
    { 'rafamadriz/friendly-snippets' }, -- Optional

    -- Heirline
    {
        "rebelot/heirline.nvim",
        -- You can optionally lazy-load heirline on UiEnter
        -- to make sure all required plugins and colorschemes are loaded before setup
        event = "UiEnter",
        config = function()
            require("heirline").setup({
        })
        end
    },

    -- Misc Stuff
    { "habamax/vim-godot", event = "BufEnter *.gd" },
    { "numToStr/Comment.nvim", config = function() require('Comment').setup() end },
    { "Darazaki/indent-o-matic" },
    { "goolord/alpha-nvim" },

    -- Pets
    {
        "giusgad/pets.nvim",
        -- dev = true,
        dependencies = { "edluffy/hologram.nvim", "MunifTanjim/nui.nvim", }
    },

    -- Lush
    { "rktjmp/lush.nvim" },

		-- Copilor
		{ "github/copilot.vim" },

}
