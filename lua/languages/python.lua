return {
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = { python = { "pylint" } },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, { "pylint" })
    end,
  },
}
