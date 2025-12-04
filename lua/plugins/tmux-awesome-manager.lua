return {
  {
    "otavioschwanck/tmux-awesome-manager.nvim",
    event = "VeryLazy",
    keys = {
      { "<leader>lf", "<cmd>lua require('tmux-awesome-manager').list_terms()<CR>",      desc = "Search Commands" },
      {
        "<leader>l",
        function()
          require("tmux-awesome-manager").send_text_to()
        end,
        desc = "Send Text to Tmux",
        mode = { "v", "x" },
      },
      { "<leader>ll", "<cmd>lua require('tmux-awesome-manager').list_open_terms()<CR>", desc = "Search Open Terminals" },
      {
        "<leader>lk",
        function()
          require("tmux-awesome-manager").kill_all_terms()
        end,
        desc = "Kill all Terms",
      },
    },
    config = function()
      require("tmux-awesome-manager").setup({
        picker = 'fzf-lua',
        project_open_as = "separated_session",
        session_name = "Servers",
        per_project_commands = {
          api = { { cmd = "rails s", name = "rails server" } }, -- configure per project for your projects
          dapp = { { cmd = "rm -rf .next; yarn dev", name = "dapp server" } },
        },
        default_size = "25%",
        use_icon = true,
        open_new_as = "pane",
        visit_first_call = true,
      })

      local tmux = require("tmux-awesome-manager.src.term")

      local set = function(key, opts)
        vim.keymap.set("n", key, tmux.run(opts), { silent = true, noremap = true, desc = opts.name })
      end

      set("<leader>rr", {
        cmd = "rails console",
        name = "rails console",
        open_as = "window",
        visit_first_call = true,
      })
      set("<leader>oy", { cmd = "yarn install", name = "yarn install", open_as = "pane" })
      set("<leader>oYc", { cmd = "yarn check-translations", name = "yarn check-translations", open_as = "pane" })

      vim.keymap.set("n", "<leader>#", function()
        require("tmux-awesome-manager").run_project_terms()
      end, { silent = true, noremap = true, desc = "Run Project Terms" })

      set("<leader>+", {
        cmd = "bundle exec rubocop -A",
        name = "rubocop",
        open_as = "pane",
        close_on_timer = 2,
        visit_first_call = false,
        focus_when_call = false,
      })

      set("<leader>rb", {
        cmd = "bundle install",
        name = "Bundle Install",
        open_as = "pane",
        close_on_timer = 2,
        visit_first_call = false,
        focus_when_call = false,
      })

      set("<leader>rg", {
        cmd = "rails generate %1",
        name = "Rails Generate",
        questions = {
          {
            question = "Rails generate: ",
            required = true,
            open_as = "pane",
            close_on_timer = 4,
            visit_first_call = false,
            focus_when_call = false,
          },
        },
      })

      set("<leader>rd", {
        cmd = "rails destroy %1",
        name = "Rails Destroy",
        questions = { { question = "Rails destroy: ", required = true } },
        open_as = "pane",
        close_on_timer = 4,
        visit_first_call = false,
        focus_when_call = false,
      })

      set("<leader>ri", {
        cmd = "rails db:migrate",
        name = "Rails db:migrate",
        open_as = "pane",
        close_on_timer = 4,
        visit_first_call = false,
        focus_when_call = false,
      })

      -- Claude Code integration
      set("<leader>oc", {
        cmd = "claude",
        name = "Claude Code",
        open_as = "pane",
        size = "35%",
        visit_first_call = true,
        focus_when_call = true,
        read_after_cmd = false,
        orientation = "horizontal",
      })

      set("<leader>oC", {
        cmd = "claude --resume",
        name = "Claude Code Resume",
        open_as = "pane",
        size = "35%",
        visit_first_call = true,
        focus_when_call = true,
        read_after_cmd = false,
        orientation = "horizontal",
      })

      -- Load Claude integration module
      local claude = require("neomood.claude")

      -- Send current file to Claude Code (with diagnostics if available)
      vim.keymap.set("n", "<leader>lc", function()
        claude.send_file_with_context()
      end, { silent = true, noremap = true, desc = "Send current file to Claude Code" })

      -- Send current file and line to Claude Code (with diagnostics if available)
      vim.keymap.set("n", "<leader>lC", function()
        claude.send_line_with_context()
      end, { silent = true, noremap = true, desc = "Send current file and line to Claude Code" })

      -- Additional Claude Code keybindings
      vim.keymap.set("n", "<leader>ld", function()
        claude.send_diagnostics()
      end, { silent = true, noremap = true, desc = "Send LSP diagnostics to Claude Code" })

      vim.keymap.set("v", "<leader>lv", function()
        claude.send_selection()
      end, { silent = true, noremap = true, desc = "Send visual selection to Claude Code" })

      vim.keymap.set("n", "<leader>lm", function()
        claude.send_custom_message()
      end, { silent = true, noremap = true, desc = "Send custom message to Claude Code" })
    end,
  },
}
