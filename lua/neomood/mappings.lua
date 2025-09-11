local M = {}

function M.set()
	local file_management = require("neomood.file-management")
	local utils = require("neomood.utils")
	local ff = require("neomood.lang_helpers.ruby").find_in_folder

	local n = utils.n
	local c = utils.c
	local v = utils.v
	local nv = utils.nv
	local x = utils.x

	x("<", "<gv")
	x(">", ">gv")

	n("x", '"_x')
	n("<leader>qq", "<cmd>qall<CR>")
	n("<Esc>", ":noh<CR><esc>")

	n("gw", function()
		vim.cmd("normal! #*gn")
		vim.cmd("normal! c")
	end)

	n("gw", "<cmd>norm! #*gnc<CR>")

	-- Command Mode Mappings
	c("<C-h>", "<Left>")
	c("<C-k>", "<S-right>")
	c("<C-j>", "<S-left>")
	c("<C-l>", "<Right>")
	c("<C-a>", "<Home>")
	c("<C-e>", "<End>")
	c("<C-d>", "<Del>")

	-- Basic Editor Stuff
	n("\\", "<cmd>wall<CR>")
	nv("-", "$")
	n(",", "<C-w>w")
	n("<C-w>,", "<C-w>W")
	n("<C-w>;", "<C-w>w")
	n("<C-e>", "<cmd>b#<CR>")
	n("ge", "<cmd>b#<CR>")
	-- nv("M", "m")

	v("J", ":m '>+1<CR>gv=gv")
	v("K", ":m '<-2<CR>gv=gv")
	n("yb", ":%y+<CR>")

	-- Leader Mappings
	-- t
	n("<leader>to", "<cmd>cg /tmp/quickfix.out<CR><cmd>copen<CR><cmd>cfirst<CR>", "Open Quickfix Output")

	-- f
	n("<leader>fC", file_management.better_copy, "Copy")
	n("<leader>fM", file_management.better_move, "Move")
	n("<leader>fd", file_management.better_delete, "Delete")
	n("<leader>fD", function()
		file_management.better_delete(true)
	end, "Delete")
	n("<leader>fR", file_management.better_rename, "Rename")
	n("<leader>fy", file_management.copy_relative_path, "Copy Filename")
	n("<leader>fl", file_management.copy_relative_path_with_line, "Copy Filename With Line")
	n("<leader>fY", file_management.copy_full_path, "Copy Filename With Line")
	n("<leader>fp", require("neomood.dotfiles").open_dotfiles, "Open Dotfiles")
	n("]q", "<cmd>cnext<CR>zz")
	n("[q", "<cmd>cprev<CR>zz")

	-- r
	n("<leader>rm", ff("app/models", "Find Model"), "Find Model")
	n("<leader>rq", ff("app/contracts", "Find Contracts"), "Find Contracts")
	n("<leader>rz", ff("app/serializers", "Find Serialiazers"), "Find Serializers")
	n("<leader>rc", ff("app/controllers", "Find Controller"), "Find Controller")
	n("<leader>rv", ff("app/views", "Find View"), "Find Views")
	n("<leader>ra", ff("config/locales", "Find Locales"), "Find Locales")
	n("<leader>ru", ff("spec/factories", "Find Factories"), "Find Factories")
	n("<leader>rs", ff("app/services", "Find Services"), "Find Services")
	n("<leader>rS", ff("app/business", "Find Business"), "Find Business")
	n("<leader>rn", ff("db/migrate", "Find Migration"), "Find Migration")
	n("<leader>ro", ff("app/avo/resources/", "Find Avo Resource"), "Find Avo Resource")
	n("<leader>rj", ff("app/jobs", "Find Jobs"), "Find Jobs")

	n("<leader>rI", require("neomood.lang_helpers.ruby").reset_rails_db, "Find Migration")
	n("<leader>rK", require("neomood.lang_helpers.ruby").kill_ruby_instances, "Find Migration")

	local neovim_file_path = vim.fn.stdpath("config")

	-- h
	n("<leader>hD", function()
		vim.cmd("Bufferize lua require('neomood.utils').debug_info()")
	end, "Debug Info")
	n("<leader>hr", require("neomood.lsp-utils").restart_lsp, "Restart LSP")
	n("<leader>hhd", "<cmd>edit" .. neovim_file_path .. "/docs/mappings.md<CR>", "Open Documentation")
	n("<leader>hhh", "<cmd>edit" .. neovim_file_path .. "/handbook.md<CR>", "Open Handbook")
	n("<leader>hht", require("neomood.tutorial").open_tutorial, "Open Tutorial")

	-- w
	n("<leader>wq", "<C-w>q", "Kill Window")
	n("<leader>wj", "<C-w>j", "Move Down")
	n("<leader>wk", "<C-w>k", "Move Up")
	n("<leader>wh", "<C-w>h", "Move Left")
	n("<leader>wl", "<C-w>l", "Move Right")
	n("<leader>wo", "<C-w>o", "Close Others")

	-- b (buffers)
	n("<leader>bC", utils.close_all_buffers_except_current, "Close All Buffers Except Current")

	n("[d", "<cmd>lua vim.diagnostic.goto_prev()<cr>", "Prev Diagnostic")
	n("]d", "<cmd>lua vim.diagnostic.goto_next()<cr>", "Next Diagnostic")

	n("<C-d>", "<C-d>zz", "Page Down")
	n("<C-u>", "<C-u>zz", "Page Up")

	vim.cmd([[
    nnoremap <expr> 0 (col('.') - 1) == match(getline('.'),'\S') ? "<Home>" : "^"
    vnoremap <expr> 0 (col('.') - 1) == match(getline('.'),'\S') ? "<Home>" : "^"

    nmap viq vaqloho
    nmap vq viq
    nmap dq diq
    nmap yq yiq
    nmap cq ciq
    nmap vij vaI
    nmap vai vaI
    nmap vaj vaIj
    nmap dij daI
    nmap daI daI
    nmap daj vaIjd
    nmap cij caI
    nmap caj vaI
    nmap cai caI
    nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'

    xnoremap <silent><expr> I mode() ==# "V" ? "<C-v>$^I" : "I"
    xnoremap <silent><expr> A mode() ==# "V" ? "<C-v>$A" : "A"
    xnoremap <silent><expr> i mode() ==# "V" ? "<C-v>$\<Home>I" : "i"
  ]])
end

return M
