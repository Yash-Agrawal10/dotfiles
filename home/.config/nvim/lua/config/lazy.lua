-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Neovim keybinds
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.keymap.set('n', '<leader>v', ':vsplit<CR>')
vim.keymap.set('n', '<leader>s', ':split<CR>')

-- Vim options
vim.opt.relativenumber = true

vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

vim.opt.clipboard = "unnamedplus"

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    { import = "plugins" },
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    {
      'nvim-telescope/telescope.nvim', version = '*',
      dependencies = {
          'nvim-lua/plenary.nvim',
          { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
      }
    },
    {
      'nvim-treesitter/nvim-treesitter',
      lazy = false,
      build = ':TSUpdate'
    },
    {
      "nvim-neo-tree/neo-tree.nvim",
      branch = "v3.x",
      dependencies = {
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
        "nvim-tree/nvim-web-devicons",
      },
      lazy = false,
     },
     {
       "folke/which-key.nvim",
       event = "VeryLazy",
       opts = {
         { "<leader>", group = "leader" },
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
     },
  },
  install = { colorscheme = { "habamax" } },
  checker = { enabled = true },
})

-- Enable/customize plugins

-- Colorscheme
vim.cmd.colorscheme("catppuccin-mocha")

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fh', function()
  builtin.find_files({ hidden = true })
end, { desc = 'Telescope find files (hidden)' })

-- NeoTree
vim.keymap.set('n', '<leader>tt', "<cmd>Neotree toggle<cr>", { desc = "Neotree toggle" })
vim.keymap.set('n', '<leader>tf', "<cmd>Neotree focus<cr>", { desc = "Neotree focus" })

