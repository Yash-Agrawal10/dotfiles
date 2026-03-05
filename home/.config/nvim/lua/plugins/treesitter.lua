return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter').install({ 'c', 'cpp', 'python', 'rust', 'javascript', 'lua' })
    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "c", "cc", "cpp", "py", "rs", "js", "lua" },
      callback = function()
        vim.treesitter.start()
      end,
    })
  end
}
