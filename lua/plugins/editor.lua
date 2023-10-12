return {
  {
    "echasnovski/mini.indentscope",
    opts = function(_, opts)
      opts.draw = {
        animation = require("mini.indentscope").gen_animation.none(),
        delay = 0,
      }
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = { virtual_text = { prefix = "icons" } },
      capabilities = {
        textDocument = {
          foldingRange = {
            dynamicRegistration = false,
            lineFoldingOnly = true,
          },
        },
      },
    },
  },
  {
    "kevinhwang91/nvim-ufo",
    dependencies = "kevinhwang91/promise-async",
    event = "BufReadPost",
    config = true,
    keys = {
      {
        "zR",
        function()
          require("ufo").openAllFolds()
        end,
      },
      {
        "zM",
        function()
          require("ufo").closeAllFolds()
        end,
      },
    },
  },
  {
    "luukvbaal/statuscol.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local builtin = require("statuscol.builtin")
      require("statuscol").setup({
        bt_ignore = { "terminal", "nofile" },
        relculright = true,
        segments = {
          {
            sign = { name = { ".*" }, maxwidth = 1 },
            click = "v:lua.ScSa",
          },
          { sign = { name = { "Diagnostic" }, maxwidth = 1, auto = true }, click = "v:lua.ScSa" },
          { text = { builtin.lnumfunc }, click = "v:lua.ScLa" },
          { text = { " " } },
          {
            sign = { name = { "GitSigns" }, maxwidth = 1, auto = true },
            click = "v:lua.ScSa",
          },
          { text = { builtin.foldfunc }, click = "v:lua.ScFa" },
          { text = { " " } },
        },
      })
    end,
  },
  {
    "uga-rosa/ccc.nvim",
    event = "BufReadPost",
    opts = {
      highlighter = {
        auto_enable = true,
        lsp = true,
      },
    },
  },
}
