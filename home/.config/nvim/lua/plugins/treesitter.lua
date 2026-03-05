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
        vim.wo[0][0].foldexpr = 'v:lua.vim.treesitter.foldexpr()'
        vim.wo[0][0].foldmethod = 'expr'
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end,
    })
    vim.opt.foldlevel = 99
  end
}
