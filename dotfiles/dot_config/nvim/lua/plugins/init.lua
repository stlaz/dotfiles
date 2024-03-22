return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre' -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    opts = {
      scope = {
        enabled = false,
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
     config = function()
       require("nvchad.configs.lspconfig").defaults()
       require "configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
     opts = {
       ensure_installed = {
           "gopls",
       },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim", "lua", "vimdoc",
        "html", "css", "go"
      },
    },
  },
}
