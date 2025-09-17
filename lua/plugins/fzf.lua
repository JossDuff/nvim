return {
    {
        "ibhagwan/fzf-lua",
        -- Add this to force update
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("fzf-lua").setup({})
        end,
    },
}
