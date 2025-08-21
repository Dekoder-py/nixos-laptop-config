require("oil").setup()
require("telescope").setup() 
require("nvim-treesitter.configs").setup {
  highlight = { enable = true },
  indent = { enable = true },
}

vim.cmd.colorscheme "catppuccin"
