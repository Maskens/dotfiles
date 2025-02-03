local wk = require("which-key")

wk.add({
  { "<leader>f", "<cmd>Telescope", desc = "Telescope", mode = "n" },
  { "<leader>fm", "<cmd>Telescope git_commits<CR>", desc = "telescope git status", mode = "n" },
  { "<leader>fn", "<cmd>Telescope marks<CR>", desc = "telescope find marks", mode = "n" },
  { "<leader>l", "", desc = "LSP", mode = "n" },
  { "<leader>t", "", desc = "Themes", mode = "n" },
  { "<leader>w", "", desc = "Which key", mode = "n" },
  { "<leader>n", "", desc = "NvChad", mode = "n" },
  { "<leader>wa", "", hidden = true },
  { "<leader>wl", "", hidden = true },
  { "<leader>wr", "", hidden = true },
  { "<leader>sh", "", hidden = true },
  { "<leader>ra", "", hidden = true },
  { "<leader>ma", "", hidden = true },
  { "<leader>gt", "", hidden = true },
  { "<leader>ds", "", hidden = true },
  { "<leader>ch", "", hidden = true },
  { "<leader>ca", "", hidden = true },
  { "<leader>cm", "", hidden = true },
  { "<leader>D", "", hidden = true },
  { "<leader>ls", vim.diagnostic.setloclist, desc = "LSP diagnostic loclist", mode = "n" },

})

return {
  { "folke/which-key.nvim", lazy = true },
  {
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
      "TmuxNavigatorProcessList",
    },
    keys = {
      { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
      { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
      { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
      { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
      { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
    },
  },
  { "nvim-tree/nvim-tree.lua", enabled = true},
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end
  }
  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
