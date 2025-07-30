-- Add this to your lua/plugins/solidity.lua file

return {
    -- Add solidity treesitter parser
    {
        "nvim-treesitter/nvim-treesitter",
        opts = function(_, opts)
            if type(opts.ensure_installed) == "table" then
                vim.list_extend(opts.ensure_installed, { "solidity" })
            end
        end,
    },

    -- Configure lspconfig for solidity
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                -- Explicitly disable other solidity servers
                solc = {
                    enabled = false,
                },
                solidity = {
                    enabled = false,
                },
                solidity_ls = {
                    enabled = false,
                },
                -- Configure the Nomicfoundation LSP
                solidity_ls_nomicfoundation = {
                    mason = true,
                    filetypes = { "solidity" },
                    root_dir = require("lspconfig.util").root_pattern("hardhat.config.*", "foundry.toml", ".git"),
                    single_file_support = true,
                    settings = {
                        solidity = {
                            includePath = "",
                            remapping = {},
                            validation = {
                                contracts = true,
                                imports = true,
                                variables = true,
                                declarations = true,
                                storage = true,
                                functions = true,
                                modifiers = true,
                                events = true,
                                expressions = true,
                            },
                        },
                    },
                },
            },
        },
    },

    -- Add mason setup for solidity
    {
        "williamboman/mason.nvim",
        opts = function(_, opts)
            opts.ensure_installed = opts.ensure_installed or {}
            -- Use exact name from Mason
            table.insert(opts.ensure_installed, "nomicfoundation-solidity-language-server")
            -- Remove other servers if they're in ensure_installed
            opts.ensure_installed = vim.tbl_filter(function(server)
                return server ~= "solidity-ls" and server ~= "solidity" and server ~= "solc"
            end, opts.ensure_installed)
        end,
    },

    -- Explicitly disable other LSP configurations
    {
        "williamboman/mason-lspconfig.nvim",
        opts = function(_, opts)
            opts.handlers = opts.handlers or {}
            -- Disable all other Solidity LSPs
            opts.handlers.solc = false
            opts.handlers.solidity = false
            opts.handlers.solidity_ls = false
        end,
    },
}
