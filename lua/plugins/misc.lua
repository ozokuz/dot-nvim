return {
  {
    "folke/twilight.nvim",
    config = true,
  },
  {
    "folke/zen-mode.nvim",
    opts = {
      on_open = function()
        require("lualine").hide({ place = { "winbar" }, unhide = false })
        vim.o.winbar = ""
      end,
      on_close = function()
        require("lualine").hide({ unhide = true, place = { "winbar" } })
      end,
    },
    keys = { { "<leader>z", "<cmd>ZenMode<cr>", desc = "Zen Mode" } },
  },
  {
    "Wansmer/treesj",
    keys = { { "J", "<cmd>TSJToggle<cr>", desc = "Split / Join Block" } },
    opts = { use_default_keymaps = false },
  },
  {
    "echasnovski/mini.splitjoin",
    enabled = false,
    opts = { mappings = { toggle = "<leader>j" } },
    keys = { { "<leader>j", desc = "Split/Join" } },
  },
  {
    "cshuaimin/ssr.nvim",
    keys = {
      {
        "<leader>sR",
        function()
          require("ssr").open()
        end,
        desc = "Structural Replace",
      },
    },
  },
  {
    "mrjones2014/smart-splits.nvim",
    opts = {
      ignored_filetypes = { "dashboard", "alpha", "neo-tree", "Outline" },
    },
    keys = {
      {
        "<C-h>",
        function()
          require("smart-splits").move_cursor_left()
        end,
      },
      {
        "<C-j>",
        function()
          require("smart-splits").move_cursor_down()
        end,
      },
      {
        "<C-k>",
        function()
          require("smart-splits").move_cursor_up()
        end,
      },
      {
        "<C-l>",
        function()
          require("smart-splits").move_cursor_right()
        end,
      },
      {
        "<A-h>",
        function()
          require("smart-splits").resize_left()
        end,
      },
      {
        "<A-j>",
        function()
          require("smart-splits").resize_down()
        end,
      },
      {
        "<A-k>",
        function()
          require("smart-splits").resize_up()
        end,
      },
      {
        "<A-l>",
        function()
          require("smart-splits").resize_right()
        end,
      },
      {
        "<leader>wh",
        function()
          require("smart-splits").swap_buf_left()
        end,
        desc = "Swap Left",
      },
      {
        "<leader>wj",
        function()
          require("smart-splits").swap_buf_down()
        end,
        desc = "Swap Down",
      },
      {
        "<leader>wk",
        function()
          require("smart-splits").swap_buf_up()
        end,
        desc = "Swap Up",
      },
      {
        "<leader>wl",
        function()
          require("smart-splits").swap_buf_right()
        end,
        desc = "Swap Right",
      },
    },
  },
  {
    "ThePrimeagen/harpoon",
    opts = {},
    keys = {
      {
        "<C-n>",
        function()
          require("harpoon.ui").nav_prev()
        end,
      },
      {
        "<C-m>",
        function()
          require("harpoon.ui").nav_next()
        end,
      },
      {
        "<leader>hh",
        function()
          require("harpoon.ui").toggle_quick_menu()
        end,
        desc = "Harpoon Menu",
      },
      {
        "<leader>ht",
        function()
          require("harpoon.mark").toggle_file()
        end,
        desc = "Toggle Mark",
      },
    },
  },
}
