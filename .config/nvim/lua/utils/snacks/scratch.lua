function get_height()
  return math.min(math.floor(vim.o.lines / 2) - 3, 30)
end

---@param main snacks.win
---@param create boolean
---@return snacks.win?
function get_uv_term(main, create)
  local icon, icon_hl = Snacks.util.icon("python", "filetype")
  local term, _ = Snacks.terminal.get({ "uv", "run", "python" }, {
    create = create,
    win = {
      title = {
        { " " },
        { icon .. string.rep(" ", 2 - vim.api.nvim_strwidth(icon)), icon_hl },
        { " " },
        { "REPL" },
        { " " },
      },
      title_pos = "center",
      width = 100,
      height = get_height,
      backdrop = false,
      row = function()
        return get_height() + 3
      end,
      minimal = true,
      border = "rounded",
      zindex = 100,
      keys = {
        q = false,
      },
    },
  })
  main:focus()
  vim.cmd("stopinsert")
  return term
end

---@param self snacks.win
function run_python(self)
  local term
  vim.schedule(function()
    term = get_uv_term(self, false)
  end)

  if not vim.wait(500, function()
    return term ~= nil
  end) then
  vim.notify("First, start the REPL")
  return
end

local text
local lines = {}
local mode = vim.fn.mode()
if mode == "n" then
  text = vim.api.nvim_get_current_line()
  table.insert(lines, text)
else
  if mode == "v" then
    vim.cmd("normal! v")
  elseif mode == "V" then
    vim.cmd("normal! V")
  end
  local from = vim.api.nvim_buf_get_mark(self.buf, "<")
  local to = vim.api.nvim_buf_get_mark(self.buf, ">")
  lines = vim.api.nvim_buf_get_text(self.buf, from[1] - 1, from[2], to[1] - 1, to[2] + 1, {})
  if #lines > 1 then
    table.insert(lines, "")
  end
end

for _, line in ipairs(lines) do
  vim.api.nvim_chan_send(vim.b[term.buf].terminal_job_id, "\x15") -- <c-u>
  vim.api.nvim_chan_send(vim.b[term.buf].terminal_job_id, line .. "\n")
end
end
