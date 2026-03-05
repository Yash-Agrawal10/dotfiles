return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  lazy = false,
  config = function()
    vim.keymap.set('n', '<leader>tt', "<cmd>Neotree toggle<cr>", { desc = "Neotree toggle" })
    vim.keymap.set('n', '<leader>tf', "<cmd>Neotree focus<cr>", { desc = "Neotree focus" })
  end
}
