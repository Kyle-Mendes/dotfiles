local lsp = require("lsp-zero")
local lspconfig = require('lspconfig')

lsp.preset("recommended")

lsp.ensure_installed({
    "tsserver",
    "lua_ls",
    "pyright",
})

require 'lspconfig'.gdscript.setup {} -- Enable GDScript
require 'lspconfig'.clangd.setup {} -- Enable clangd 

local cmp = require("cmp")
local cmp_mappings = lsp.defaults.cmp_mappings({
    -- ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    -- ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    -- ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    -- ["<C-Space>"] = cmp.mapping.complete(),
})

lsp.setup_nvim_cmp({
    mapping = cmp_mappings
})

lsp.on_attach(function(client, bufnr) -- Only apply to the buffer if it has LSP
    local opts = { buffer = bufnr, remap = false }

    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "<leader>la", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>gr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>lrn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)

    vim.api.nvim_create_autocmd('BufWritePre', {
        pattern = "*.cpp,*.h,*.svelte,*.c,*.odin",
        callback = function() vim.lsp.buf.format({ timeout_ms = 100 }) end
    })

    -- vim.api.nvim_create_autocmd('BufWritePre', {
    --     pattern = "*.ts,*.tsx,*.js,*.jsx",
    --     callback = function() vim.lsp.buf.format({ timeout_ms = 200 }) end
    -- })
end)

lsp.configure("pyright", {
    settings = {
        python = {
            analysis = {
                extraPaths = { '~/.virtualenvs/discord_api/lib/python3.7/site-packages',
                    '/Users/kylemendes/Projects/discord/discord/discord_common/py' }
            },
        },
    },
})

-- Fix Undefined global 'vim'
lsp.configure('lua_ls', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})


lspconfig.eslint.setup({
    on_attach = function(client, bufnr)
        vim.api.nvim_create_autocmd("BufWritePre", {
            buffer = bufnr,
            command = "EslintFixAll",
        })
    end,
})

local cmp_nvim_lsp = require "cmp_nvim_lsp"
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.offsetEncoding = 'utf-16'

lspconfig.clangd.setup{
    capabilities = cmp_nvim_lsp.default_capabilities(),
    cmd = {
        "clangd",
        "--offset-encoding=utf-16",
    },
}


lsp.setup()

vim.diagnostic.config({
    virtual_text = true,
})

-- vim.api.nvim_create_autocmd("BufWritePre", {
--     buffer = buffer,
--     callback = function()
--         vim.lsp.buf.format { async = false }
--     end
-- })
