return {
  {
    "sindrets/diffview.nvim",
    keys = { { "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "Git: Diff" } },
  },
  {
    "TimUntersberger/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    opts = {
      integrations = { diffview = true },
    },
    keys = { { "<leader>gg", "<cmd>Neogit<cr>", desc = "Git: Status" } },
  },
  {
    "tpope/vim-fugitive",
    lazy = false,
  },
  -- {
  --   "pwntester/octo.nvim",
  --   dependencies = {
  --     "nvim-lua/plenary.nvim",
  --     "nvim-telescope/telescope.nvim",
  --     "nvim-tree/nvim-web-devicons",
  --   },
  --   cmd = "Octo",
  --   config = true,
  -- },
}
