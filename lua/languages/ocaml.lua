return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ocamllsp = {},
      },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, { "ocaml-lsp", "ocamlformat" })
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, { "ocaml", "ocaml_interface" })
    end,
  },
  {
    "nvimtools/none-ls.nvim",
    opts = function(_, opts)
      local null_ls = require("null-ls")
      table.insert(opts.sources, null_ls.builtins.formatting.ocamlformat)
    end,
  },
}
