return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    event = "VeryLazy",
    config = function()
      local mason_langs = {
        "lua_ls",
        "jsonls",
        "yamlls",
        "jsonls",
        "cssls"
      }

      require("mason").setup()
      require("mason-lspconfig").setup({
        automatic_installation = { exclude = { "solargraph", "ruby_lsp", "rubocop" } }, -- don't install it please
        ensure_installed = mason_langs,
      })

      local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()

      vim.diagnostic.config({ virtual_text = true })

      vim.lsp.util._get_position_encodings = function()
        return { "utf-16" }
      end

      for _, lang in ipairs(mason_langs) do
        vim.lsp.config(lang, {
          capabilities = lsp_capabilities,
        })
      end

      vim.lsp.config("ts_ls", {
        capabilities = lsp_capabilities,
      })

      vim.lsp.config("ruby_lsp", {
        capabilities = lsp_capabilities,
        on_attach = function(client)
          client.server_capabilities.documentFormattingProvider = false
        end,
      })

      vim.lsp.config("rubocop", {
        capabilities = lsp_capabilities,
        cmd = { "bundle", "exec", "rubocop", "--lsp" },
      })

      -- Blocklist: servers that should never start, even if called via LspStart
      local lsp_blocklist = { "solargraph" }

      vim.lsp.enable("solargraph", false)

      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local client = vim.lsp.get_client_by_id(args.data.client_id)
          if client and vim.tbl_contains(lsp_blocklist, client.name) then
            client:stop()
          end
        end,
      })

      -- Enable servers not managed by mason
      vim.lsp.enable("ts_ls")
      vim.lsp.enable("rubocop")
      vim.lsp.enable("ruby_lsp")

      local border_opts = {
        border = { { "╭" }, { "─" }, { "╮" }, { "│" }, { "╯" }, { "─" }, { "╰" }, { "│" } },
        scrollbar = false,
      }

      vim.diagnostic.config({
        float = border_opts,
      })

      vim.api.nvim_create_autocmd("LspAttach", {
        desc = "LSP actions",
        callback = function()
          local bufmap = function(mode, lhs, rhs)
            local opts = { buffer = true }
            vim.keymap.set(mode, lhs, rhs, opts)
          end

          local fzf_lua = require("fzf-lua")

          -- Displays hover information about the symbol under the cursor
          bufmap("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>")

          -- Jump to the definition
          bufmap("n", "gd", fzf_lua.lsp_definitions)
          bufmap("n", "<MiddleMouse>",   "<LeftMouse><cmd>lua require('fzf-lua').lsp_definitions()<cr>")
          bufmap("n", "<2-MiddleMouse>", "<LeftMouse><cmd>lua require('fzf-lua').lsp_definitions()<cr>")
          bufmap("n", "<3-MiddleMouse>", "<LeftMouse><cmd>lua require('fzf-lua').lsp_definitions()<cr>")
          bufmap("n", "<4-MiddleMouse>", "<LeftMouse><cmd>lua require('fzf-lua').lsp_definitions()<cr>")

          -- Jump to declaration
          bufmap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<cr>")

          -- Lists all the implementations for the symbol under the cursor
          bufmap("n", "gI", fzf_lua.lsp_implementations)

          -- Jumps to the definition of the type symbol
          bufmap("n", "gt", fzf_lua.lsp_typedefs)

          -- Lists all the references
          bufmap("n", "gr", fzf_lua.lsp_references)

          -- Displays a function's signature information
          bufmap("n", "gK", "<cmd>lua vim.lsp.buf.signature_help()<cr>")

          -- Renames all references to the symbol under the cursor
          bufmap("n", "<gr>", "<cmd>lua vim.lsp.buf.rename()<cr>")

          -- Selects a code action available at the current cursor position
          bufmap("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<cr>")

          -- Show diagnostics in a floating window
          bufmap("n", "gl", "<cmd>lua vim.diagnostic.open_float()<cr>")
        end,
      })
    end,
  },
}
