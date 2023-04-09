local plugins = {
  {
    "neovim/nvim-lspconfig",

    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require "custom.configs.null-ls"
      end,
    },

    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "html",
        "css",
        "bash",
        "dockerfile",
        "gitignore",
        "lua",
        "vim",
        "solidity",
        "typescript",
        "javascript",
        "tsx",
      },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "html-lsp",
        "prettier",
        "stylua",
        "solang",
        "typescript-language-server",
        "yaml-language-server",
        "markdown-toc",
        "json-lsp",
        "eslint-lsp",
        "docker-compose-language-service",
        "dockerfile-language-server",
        "shellcheck",
      },
    },
  },
}

return plugins
