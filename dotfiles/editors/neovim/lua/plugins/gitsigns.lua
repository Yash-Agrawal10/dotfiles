return {
  "lewis6991/gitsigns.nvim",
  event = "BufReadPre",
  opts = {},
  keys = {
    { "]h", "<cmd>Gitsigns next_hunk<cr>", desc = "Next hunk" },
    { "[h", "<cmd>Gitsigns prev_hunk<cr>", desc = "Prev hunk" },
    { "<leader>ghp", "<cmd>Gitsigns preview_hunk<cr>", desc = "Preview hunk" },
    { "<leader>ghs", "<cmd>Gitsigns stage_hunk<cr>", desc = "Stage hunk" },
    { "<leader>ghr", "<cmd>Gitsigns reset_hunk<cr>", desc = "Reset hunk" },
    { "<leader>ghb", "<cmd>Gitsigns blame_line<cr>", desc = "Blame line" },
    { "<leader>ghd", "<cmd>Gitsigns diffthis<cr>", desc = "Diff this" },
  },
}
