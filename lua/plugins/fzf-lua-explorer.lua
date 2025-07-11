return {
  {
    "otavioschwanck/fzf-lua-explorer.nvim",
    dependencies = { "ibhagwan/fzf-lua" },
    keys = {
      { "<leader>.", "<cmd>lua require('fzf-lua-explorer').explorer()<cr>", desc = "Explorer" }
    },
    config = function()
      require("fzf-lua-explorer").setup({
        create_file_from_input = true, -- Default: false
      })
    end
  }
}
