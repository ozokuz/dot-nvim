return {
  {
    "simrat39/rust-tools.nvim",
    opts = {},
    ft = "rust",
  },
  {
    "Saecki/crates.nvim",
    event = "BufRead Cargo.toml",
    version = "v0.3.0",
    config = function()
      require("crates").setup({
        null_ls = {
          enabled = true,
        },
      })

      require("cmp").register_source("crates", require("crates.src.cmp").new())
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.sources = cmp.config.sources(vim.list_extend(opts.sources, { { name = "crates" } }))
    end,
  },
}
