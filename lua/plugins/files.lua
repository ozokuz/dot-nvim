return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    enabled = false,
    opts = function(_, opts)
      opts.window.mappings["l"] = "open"
    end,
  },
  {
    "stevearc/oil.nvim",
    init = function()
      if vim.fn.argc(-1) == 1 then
        local stat = vim.loop.fs_stat(vim.fn.argv(0))
        if stat and stat.type == "directory" then
          require("oil")
        end
      end
    end,
    opts = {},
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys = {
      {
        "<leader>fd",
        function()
          require("oil").open()
        end,
        desc = "Directory Editor",
      },
    },
  },
}
