return {
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require "cmp"
      opts.mapping = vim.tbl_deep_extend("force", opts.mapping, {
        ["<CR>"] = cmp.config.disable,
        ["<C-y>"] = cmp.mapping.confirm { select = true },
      })
    end,
  },
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "html-lsp",
        "prettier",
        "css-lsp",
        "pyright",
        "clangd-format",
        "clangd",
        "ruff",
        "lua-language-server",
        "luacheck",
        "luaformatter",
        "cmake-language-server",
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "cpp",
        "python",
      },
    },
  },
  {
    "github/copilot.vim",
    lazy = false,
  },
}
