-- here is just an example of how to make template files for new files on neovim

local utils = require("new-file-template.utils")

local function generate_module_structure(yield, qtd_dirs_to_hide, path)
  local directories = {}
  for dir in path:gmatch("[^/]+") do
    table.insert(directories, dir)
  end

  if qtd_dirs_to_hide >= #directories then
    return "# frozen_string_literal: true\n\n" .. yield
  end

  for _ = 1, qtd_dirs_to_hide do
    table.remove(directories, 1)
  end

  local moduleStructure = ""
  local indentation = ""
  for _, dir in ipairs(directories) do
    moduleStructure = moduleStructure .. indentation .. "module " .. utils.snake_to_class_camel(dir) .. "\n"
    indentation = indentation .. "  "
  end

  local classLines = {}
  local classIndentation = indentation:sub(1, -3) .. "  "
  for line in yield:gmatch("[^\n]+") do
    table.insert(classLines, classIndentation .. line)
  end
  yield = table.concat(classLines, "\n")

  moduleStructure = moduleStructure .. yield .. "\n"

  for _ = #directories, 1, -1 do
    indentation = indentation:sub(1, -3)
    moduleStructure = moduleStructure .. indentation .. "end\n"
  end

  return "# frozen_string_literal: true\n\n" .. moduleStructure:sub(1, -2)
end

local function get_class_name(filename)
  return utils.snake_to_class_camel(vim.split(filename, "%.")[1])
end

local function inheritance_class(filename, class)
  return [[
class ]] .. get_class_name(filename) .. " < " .. class .. [[

  |cursor|
end]]
end

local function create_service_template(path, filename)
  print(
    "Mood Tip: Para criar ou ir até o contrato referente a este service.  Digite: SPC f a (telescope-alternate plugin)"
  )

  local class_text = inheritance_class(filename, "CreateService")

  return generate_module_structure(class_text, 2, path)
end

return function(opts)
  local template = {
    { pattern = "app/services/.*_services/create.rb", content = create_service_template },
  }

  return utils.find_entry(template, opts)
end
