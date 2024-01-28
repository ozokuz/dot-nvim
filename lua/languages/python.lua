return {
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = { python = { "pylint" } },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = { "pylint" },
    },
  },
}
