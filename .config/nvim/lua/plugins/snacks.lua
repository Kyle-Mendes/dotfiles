require("utils.snacks.scratch")
return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      animate = { enabled = true },
      bigfile = { enabled = true },
      bufdelete = { enabled = false },
      dashboard = { enabled = false },
      debug = { enabled = false },
      dim = {
        enabled = true,
        scope = {
          min_size = 30,
        }
      },
      explorer = { enabled = false },
      git = { enabled = false },
      gitbrowse = { enabled = false },
      image = { enabled = true },
      indent = { enabled = false },
      input = { enabled = false },
      layout = { enabled = false },
      lazygit = { enabled = false },
      notifier = { enabled = true },
      notify = { enabled = true },
      picker = { enabled = true },
      profiler = { enabled = false },
      quickfile = { enabled = false },
      rename = { enabled = false },
      scope = { enabled = false },
      scratch = {
        enabled = true,
        name = "Scratch Pad",
        win = {
          row = 1,
          height = get_height,
          ---@param self snacks.win
          on_close = function(self)
            local term = get_uv_term(self, false)
            if term then
              vim.schedule(function()
                vim.api.nvim_chan_send(vim.b[term.buf].terminal_job_id, "\x03") -- <C-c>
                vim.api.nvim_chan_send(vim.b[term.buf].terminal_job_id, "exit()\n")
              end)
            end
          end,
        },
        win_by_ft = {
          python = {
            keys = {
              ["start"] = {
                "R",
                function(self)
                  get_uv_term(self, true)
                end,
                desc = "Start REPL",
                mode = { "n" },
              },
              ["send"] = {
                "<CR>",
                run_python,
                desc = "Send",
                mode = { "n", "x" },
              },
            },
          },
        },
      },
      scroll = { enabled = false },
      statuscolumn = { enabled = false },
      terminal = { enabled = false },
      toggle = { enabled = false },
      util = { enabled = false },
      win = { enabled = false },
      words = { enabled = false },
      zen = { enabled = false },
    },
  },
}
