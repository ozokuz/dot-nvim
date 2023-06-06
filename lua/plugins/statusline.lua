return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      local icons = require("lazyvim.config").icons
      local disabled = { "dashboard", "alpha" }

      opts.options.disabled_filetypes.winbar = { "dashboard", "alpha", "neo-tree" }

      opts.winbar = {
        lualine_a = { "filename" },
        lualine_b = {
          function()
            return require("nvim-navic").get_location()
          end,
        },
      }

      opts.inactive_winbar = {
        lualine_a = { "filename" },
      }

      opts.sections.lualine_c = {
        {
          "diagnostics",
          symbols = {
            error = icons.diagnostics.Error,
            warn = icons.diagnostics.Warn,
            info = icons.diagnostics.Info,
            hint = icons.diagnostics.Hint,
          },
        },
        { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
        { "filename", path = 1, symbols = { modified = "  ", readonly = "", unnamed = "" } },
      }

      opts.extensions = { "neo-tree" }
    end,
  },
}
