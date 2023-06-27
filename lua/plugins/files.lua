return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = function(_, opts)
      opts.window.mappings["l"] = "open"
    end,
  },
  {
    "stevearc/oil.nvim",
    opts = {},
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys = { {
      "<leader>fd",
      function()
        require("oil").open()
      end,
      desc = "Directory Editor",
    } },
  },
}
