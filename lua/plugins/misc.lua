return {
  {
    "folke/twilight.nvim",
    config = true,
  },
  {
    "folke/zen-mode.nvim",
    opts = {
      on_open = function()
        require("lualine").hide({ place = { "winbar" } })
        vim.o.winbar = ""
      end,
      on_close = function()
        require("lualine").hide({ unhide = true })
      end,
    },
    keys = { { "<leader>z", "<cmd>ZenMode<cr>", desc = "Zen Mode" } },
  },
}
