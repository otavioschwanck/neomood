-- Claude Code integration for Neovim
-- Provides advanced integration features with Claude Code via tmux

local M = {}

-- Send text to Claude Code terminal
function M.send_to_claude(text)
  local tmux = require("tmux-awesome-manager.src.term")
  tmux.refresh_really_opens()

  -- Try to find Claude terminal with or without icon
  local claude_id = nil
  local icon = vim.g.tmux_icon or ""

  -- Try different variations of the name
  local possible_names = {
    icon .. "Claude Code",
    "Claude Code",
    icon .. "Claude Code Resume",
    "Claude Code Resume",
  }

  for _, name in ipairs(possible_names) do
    if vim.g.tmux_open_terms[name] then
      claude_id = vim.g.tmux_open_terms[name]
      break
    end
  end

  if not claude_id then
    vim.notify("Claude Code terminal not found. Open it with <leader>oc first.", vim.log.levels.WARN, { title = "Claude Code" })
    return false
  end

  -- Escape single quotes in the text
  local escaped_text = text:gsub("'", "'\\''")

  -- Send the text to Claude's terminal
  vim.fn.system("tmux send-keys -t " .. claude_id .. " '" .. escaped_text .. "' Enter")
  return true
end

-- Get LSP diagnostics for current buffer
function M.get_diagnostics()
  local diagnostics = vim.diagnostic.get(0)
  if #diagnostics == 0 then
    return nil
  end

  local result = {}
  for _, diag in ipairs(diagnostics) do
    local severity = vim.diagnostic.severity[diag.severity]
    table.insert(result, string.format(
      "Line %d: [%s] %s",
      diag.lnum + 1,
      severity,
      diag.message
    ))
  end

  return table.concat(result, "\n")
end

-- Send current file with context
function M.send_file_with_context()
  local file_path = vim.fn.fnamemodify(vim.fn.expand("%"), ":~:.")
  if file_path == "" then
    vim.notify("No file in current buffer", vim.log.levels.WARN, { title = "Claude Code" })
    return
  end

  local diagnostics = M.get_diagnostics()
  local message = "@" .. file_path

  if diagnostics then
    message = message .. "\n\nCurrent diagnostics:\n" .. diagnostics
  end

  M.send_to_claude(message)
end

-- Send current file and line with context
function M.send_line_with_context()
  local file_path = vim.fn.fnamemodify(vim.fn.expand("%"), ":~:.")
  local line_num = vim.fn.line(".")

  if file_path == "" then
    vim.notify("No file in current buffer", vim.log.levels.WARN, { title = "Claude Code" })
    return
  end

  -- Get diagnostics at current line
  local diagnostics = vim.diagnostic.get(0, { lnum = line_num - 1 })

  local message = string.format("@%s:L%d", file_path, line_num)

  if #diagnostics > 0 then
    message = message .. "\n\nDiagnostics at this line:"
    for _, diag in ipairs(diagnostics) do
      local severity = vim.diagnostic.severity[diag.severity]
      message = message .. string.format("\n[%s] %s", severity, diag.message)
    end
  end

  M.send_to_claude(message)
end

-- Send LSP diagnostics
function M.send_diagnostics()
  local diagnostics = M.get_diagnostics()

  if not diagnostics then
    vim.notify("No diagnostics found", vim.log.levels.INFO, { title = "Claude Code" })
    return
  end

  local file_path = vim.fn.fnamemodify(vim.fn.expand("%"), ":~:.")
  local message = string.format(
    "@%s\n\nPlease help me fix these diagnostics:\n\n%s",
    file_path,
    diagnostics
  )

  M.send_to_claude(message)
end

-- Send visual selection to Claude
function M.send_selection()
  if not (vim.fn.mode() == "v" or vim.fn.mode() == "V") then
    vim.notify("Use this in visual mode", vim.log.levels.WARN, { title = "Claude Code" })
    return
  end

  local file_path = vim.fn.fnamemodify(vim.fn.expand("%"), ":~:.")
  local start_line = vim.fn.line("'<")
  local end_line = vim.fn.line("'>")

  -- Get the selected text
  vim.cmd('normal! "ty')
  local selected_text = vim.fn.getreg("t")

  local message = string.format(
    "@%s:L%d-L%d\n\nPlease review this code:\n\n```\n%s\n```",
    file_path,
    start_line,
    end_line,
    selected_text
  )

  M.send_to_claude(message)
end

-- Send custom message to Claude
function M.send_custom_message()
  local input = vim.fn.input("Message to Claude: ")
  if input ~= "" then
    M.send_to_claude(input)
  end
end

return M
