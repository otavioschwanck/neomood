return {
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {
      continue = true,
      modes = {
        char = {
          enabled = true,
        },
        search = {
          enabled = false,
        },
      },
    },
    keys = function()
      return {
        {
          "s",
          mode = { "n", "x", "o" },
          function()
            require("flash").jump()
          end,
          desc = "Flash",
        },
        {
          "r",
          mode = "o",
          function()
            require("flash").remote()
          end,
          desc = "Remote Flash",
        },
        {
          "R",
          mode = { "o", "x" },
          function()
            require("flash").treesitter_search()
          end,
          desc = "Treesitter Search",
        },
        {
          "<c-s>",
          mode = { "c" },
          function()
            require("flash").toggle()
          end,
          desc = "Toggle Flash Search",
        },
        {
          "S",
          mode = { "n" },
          function()
            require("flash").jump({
              labels = "asdfghjklqwertyuiopzxcvbnmASDFGHJKLQWERTYUIOPZXCVBNM123456789",
              search = {
                mode = "search",
              },
              pattern = [[\<[A-Z][a-zA-Z0-9]*\>]],
              jump = {
                pos = "end",
              },
              label = {
                uppercase = false,
              },
            })
          end,
          desc = "Flash Jump to Class Calls",
        },
      }
    end,
  },
}
