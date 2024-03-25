return {}

--[[ if vim.fn.has("win32") == 1 then
  return {}
end

local osname = vim.fn.system('bash -c "eval `cat /etc/os-release` && echo \\$NAME"')

if osname ~= "NixOS\n" then
  return {}
end

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {
          mason = false,
        },
        lua_ls = {
          mason = false,
        },
        marksman = {
          mason = false,
        },
        rust_analyzer = {
          mason = false,
        },
      },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = vim.tbl_filter(function(t)
        if t == "stylua" then
          return false
        end
        return true
      end, opts.ensure_installed)

      return opts
    end,
  },
} ]]
