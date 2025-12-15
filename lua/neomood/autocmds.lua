local M = {}

function M.set()
  require("neomood.autocmd_langs.ruby")
  require("neomood.autocmd_langs.csv")

  vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*",
    callback = function(args)
      if vim.g.format_on_save then
        require("conform").format({ bufnr = args.buf })
      end
    end,
  })

  local two_space_languages = { "ruby", "yaml", "javascript", "typescript", "typescriptreact", "javascriptreact", "eruby",
    "lua" }

  local four_space_languages = { "solidity" }

  -- on window resize, run <C-w>=
  vim.api.nvim_create_autocmd({ "VimResized" }, {
    pattern = "*",
    callback = function()
      vim.cmd("wincmd =")
    end,
  })

  local autocommands = {
    {
      { "BufWritePre" },
      { "*" },
      function()
        vim.cmd('call mkdir(expand("<afile>:p:h"), "p")')
      end,
    },
    {
      { "FileType" },
      two_space_languages,
      function()
        vim.cmd("setlocal shiftwidth=2 tabstop=2")
      end,
    },
    {
      { "FileType" },
      four_space_languages,
      function()
        vim.cmd("setlocal shiftwidth=4 tabstop=4")
      end,
    },
  }

  vim.api.nvim_create_augroup("otavioschwanck", { clear = true })

  vim.api.nvim_create_autocmd({ "BufWinEnter" }, {
    group = "otavioschwanck",
    desc = "return cursor to where it was last time closing the file",
    pattern = "*",
    command = 'silent! normal! g`"zv',
  })

  vim.api.nvim_create_autocmd('TextYankPost', {
    callback = function()
      vim.highlight.on_yank({ timeout = 200 })
    end,
  })

  -- Dimming quando Neovim perde foco (outro pane do tmux ativo)
  vim.api.nvim_create_autocmd("FocusLost", {
    callback = function()
      vim.cmd("hi Normal guibg=#181825")
      vim.cmd("hi NormalNC guibg=#181825")
    end,
  })

  vim.api.nvim_create_autocmd("FocusGained", {
    callback = function()
      vim.cmd("hi Normal guibg=#1e1e2e")
      vim.cmd("hi NormalNC guibg=#1e1e2e")
    end,
  })

  -- Refresh gitsigns when focusing a buffer (since watch_dir is disabled)
  local gitsigns_timer = nil

  vim.api.nvim_create_autocmd({ "BufEnter", "FocusGained", "TermClose" }, {
    callback = function()
      if package.loaded["gitsigns"] and not vim.bo.readonly and vim.fn.expand('%') ~= '' then
        if gitsigns_timer then
          gitsigns_timer:close()
        end

        gitsigns_timer = vim.defer_fn(function()
          vim.cmd("silent! Gitsigns detach")
          vim.cmd("silent! Gitsigns attach")
          gitsigns_timer = nil
        end, 200)
      end
    end
  })
  --
  for i = 1, #autocommands, 1 do
    vim.api.nvim_create_autocmd(autocommands[i][1], { pattern = autocommands[i][2], callback = autocommands[i][3] })
  end
end

return M
