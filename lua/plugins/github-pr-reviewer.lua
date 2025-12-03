return {
  {
    "otavioschwanck/github-pr-reviewer.nvim",
    -- dir = "~/Projetos/neovim-pr-reviewer",
    event = "VeryLazy",
    opts = {
      picker = "fzf-lua",
      open_files_on_review = true,
    },
    keys = {
      { "<leader>p", "<cmd>PRReviewMenu<cr>",    desc = "PR Review Menu" },
      { "<leader>p", "<cmd>PRSuggestChange<CR>", desc = "Suggest change", mode = "v" }
    }
  },
}
