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
    "simrat39/symbols-outline.nvim",
    cmd = "SymbolsOutline",
    keys = { { "<leader>cs", "<cmd>SymbolsOutline<cr>", desc = "Symbols Outline" } },
    config = true,
  },
}
