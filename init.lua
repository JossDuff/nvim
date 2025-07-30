-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("lspconfig").pyright.setup({})
require("neo-tree").setup({
    filesystem = {
        filtered_items = {
            visible = true,
        },
    },
})
-- require("lspconfig").rust_analyzer.setup({
--     cmd = { "rust-analyzer" },
--     -- other settings...
-- })
