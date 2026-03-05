return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter').install({ 'c', 'cpp', 'python', 'rust', 'javascript', 'typescript', 'lua' })
    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "c", "cpp", "rust", "python", "javascript", "typescript", "lua" },
      callback = function()
        vim.treesitter.start()
      end,
    })
  end
}
