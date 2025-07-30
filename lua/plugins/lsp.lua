return {
  -- LSP Configuration
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "jose-elias-alvarez/typescript.nvim",
    },
    opts = {
      servers = {
        -- Python
        pyright = {},
        
        -- TypeScript/JavaScript
        tsserver = {},
        
        -- Solidity
        solidity = {},
      },
      setup = {
        -- Setup TypeScript with typescript.nvim
        tsserver = function(_, opts)
          require("typescript").setup({ server = opts })
          return true
        end,
      },
    },
    init = function()
      require("lazyvim.util").lsp.on_attach(function(_, buffer)
        vim.keymap.set("n", "<leader>co", "TypescriptOrganizeImports", { buffer = buffer, desc = "Organize Imports" })
        vim.keymap.set("n", "<leader>cR", "TypescriptRenameFile", { desc = "Rename File", buffer = buffer })
      end)
    end,
  },

  -- Mason for automatic LSP server installation
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",
      },
    },
  },
}