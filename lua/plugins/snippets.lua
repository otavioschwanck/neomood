return {
  {
    "rafamadriz/friendly-snippets",
    event = "VeryLazy",
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
      require("luasnip.loaders.from_vscode").lazy_load({ paths = { "./snippets" } })
    end,
  },
}
