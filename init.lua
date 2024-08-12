-- init.lua — minimal neovim config
-- Marek Novotný

-- Settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.updatetime = 250
vim.opt.clipboard = "unnamedplus"

-- Keymaps
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>q", ":q<CR>")
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- LSP (rust-analyzer)
local lsp = require("lspconfig")
lsp.rust_analyzer.setup({
    settings = {
        ["rust-analyzer"] = {
            cargo = { allFeatures = true },
            checkOnSave = { command = "clippy" },
        },
    },
})

-- Treesitter
require("nvim-treesitter.configs").setup({
    ensure_installed = { "rust", "toml", "yaml", "json", "lua", "vim" },
    highlight = { enable = true },
})
// 2024-08-12 — Update neovim: add clipboard and signcolumn settings
