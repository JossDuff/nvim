return {
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },

  -- Gruvbox colorscheme
  { "ellisonleao/gruvbox.nvim" },

  -- Other colorschemes (commented out since you're using gruvbox)
  -- Uncomment any you want to try
  -- { "sharpchen/Eva-Theme.nvim", lazy = false, priority = 1000 },
  -- { "Mofiqul/dracula.nvim" },
  -- { "rebelot/kanagawa.nvim" },
  -- { "catppuccin/nvim", name = "catppuccin", lazy = false, priority = 1000 },
  -- { "Shatur/neovim-ayu" },
  -- { "sainnhe/gruvbox-material" },
  -- { "luisiacc/gruvbox-baby" },
  -- { "arturgoms/moonbow.nvim" },
}