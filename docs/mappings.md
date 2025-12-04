# Key Mappings Reference

This document provides a comprehensive reference of all key mappings in NeoMood, organized by category and source.

## Core Mappings (mappings.lua)

### Basic Editor Operations
- `\` - Save all files (`:wall`)
- `-` - Jump to end of line (`$`)
- `,` - Switch between windows (`<C-w>w`)
- `<C-w>,` - Switch between windows (reverse)
- `<C-e>` - Switch to alternate buffer
- `ge` - Switch to alternate buffer
- `x` - Delete character (no yank)
- `<leader>qq` - Quit all (`:qall`)

### Text Manipulation
- `gq` - Change word under cursor (search and replace)
- `J` (Visual) - Move selected lines down
- `K` (Visual) - Move selected lines up
- `yb` - Yank entire buffer to clipboard
- `<` (Visual) - Outdent and keep selection
- `>` (Visual) - Indent and keep selection

### Command Mode Navigation (:)
- `<C-h>` - Move left
- `<C-l>` - Move right
- `<C-k>` - Move word right
- `<C-j>` - Move word left
- `<C-a>` - Move to beginning
- `<C-e>` - Move to end
- `<C-d>` - Delete character

### File Management
- `<leader>fC` - Copy file
- `<leader>fM` - Move file
- `<leader>fd` - Delete file
- `<leader>fD` - Delete file (force)
- `<leader>fR` - Rename file
- `<leader>fy` - Copy relative path
- `<leader>fl` - Copy relative path with line number
- `<leader>fY` - Copy full path
- `<leader>fp` - Open dotfiles (quick access to .zshrc, .tmux.conf, alacritty.toml - customizable in `lua/neomood/dotfiles.lua`)

### Rails Development
- `<leader>rm` - Find Model
- `<leader>rq` - Find Contracts
- `<leader>rz` - Find Serializers
- `<leader>rc` - Find Controller
- `<leader>rv` - Find View
- `<leader>ra` - Find Locales
- `<leader>ru` - Find Factories
- `<leader>rs` - Find Services
- `<leader>rS` - Find Business
- `<leader>rn` - Find Migration
- `<leader>ro` - Find Avo Resource
- `<leader>rj` - Find Jobs
- `<leader>rI` - Reset Rails database
- `<leader>rK` - Kill Ruby instances

### Window Management
- `<leader>wq` - Close window
- `<leader>wj` - Move to window below
- `<leader>wk` - Move to window above
- `<leader>wh` - Move to window left
- `<leader>wl` - Move to window right
- `<leader>wo` - Close other windows

### Diagnostics
- `[d` - Previous diagnostic
- `]d` - Next diagnostic
- `]q` - Next quickfix item
- `[q` - Previous quickfix item

### Helper Commands
- `<leader>hD` - Delete swap files
- `<leader>hr` - Restart LSP
- `<leader>to` - Open quickfix output

## Plugin Mappings

### Arrow Navigation - [otavioschwanck/arrow.nvim](https://github.com/otavioschwanck/arrow.nvim)
- `;` Open Arrow Menu
- `H` - Previous Arrow bookmark
- `L` - Next Arrow bookmark
- `m` - Per buffer bookmark

### Code Completion with IA (Codeium) - [Exafunction/codeium.vim](https://github.com/Exafunction/codeium.vim)
- `<C-j>` (Insert) - Accept AI suggestion
- `<C-f>` (Insert) - Accept next word
- `<C-l>` (Insert) - Accept next line
- `<C-b>` (Insert) - Cycle to next completion
- `<C-]>` (Insert) - Clear suggestions
- `<C-u>` (Insert) - Manual trigger completion

### CMP Completion (auto complete) - [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- `<Tab>` - Select next item
- `<S-Tab>` - Select previous item
- `<CR>` - Confirm selection
- `<C-e>` - Complete
- `<C-u>` - Scroll docs up
- `<C-d>` - Scroll docs down

### Snippets - [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip) & [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- `<C-N>` - Expand snippet or jump to next placeholder
- `<C-P>` - Jump to previous placeholder
- `<BS>` - Delete and jump in snippet mode

### Flash Jump - [folke/flash.nvim](https://github.com/folke/flash.nvim)
- `s` - Flash jump
- `S` - Flash jump to classes (CamelCase patterns, cursor lands at end of match)
- `r` (Operator) - Remote Flash
- `R` (Operator/Visual) - Treesitter Search
- `<C-s>` (Command) - Toggle Flash Search

**Tip**: Combine `S` with `gd` (go to definition) for efficient class navigation - use `S` to jump to a class name, then `gd` to go to its definition.

### File Explorer - [nvim-neo-tree/neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
- `<leader>e` - Toggle Neo-tree
- `<leader>E` - Open current file in Neo-tree

### FZF Explorer - [otavioschwanck/fzf-lua-explorer.nvim](https://github.com/otavioschwanck/fzf-lua-explorer.nvim)
- `<leader>.` - FZF Explorer

### FZF-Lua (Fuzzy Finding) - [ibhagwan/fzf-lua](https://github.com/ibhagwan/fzf-lua)
- `<leader><space>` - Find files
- `<leader>sp` - Live grep
- `<leader>sh` - Help tags
- `<leader>sr` - Recent files
- `<leader>sw` - Grep word at cursor (Normal) / Grep visual selection (Visual)
- `<leader>,` - Buffers
- `<leader><cr>` - Resume FZF
- `<leader><tab>` - Git status
- `<leader>sd` - Live grep on current folder
- `<leader>ss` - Search in current buffer
- `<leader>so` - Search in all open buffers
- `<leader>sD` - Live grep on specific folder

### Git Operations - [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- `]g` - Next git hunk
- `[g` - Previous git hunk
- `<leader>gs` - Stage hunk
- `<leader>gr` - Reset hunk
- `<leader>gS` - Stage buffer
- `<leader>gu` - Undo stage hunk
- `<leader>gR` - Reset buffer
- `<leader>gp` - Preview hunk
- `<leader>gb` - Blame line
- `ih` - Select hunk (text object, example: vih)

### Git Diff Viewer - [sindrets/diffview.nvim](https://github.com/sindrets/diffview.nvim)
- `<leader>gd` - Current file history
- `<leader>gh` - All commits history
- `<leader>qd` - Close diffview

### Git Time Machine - [fredeeb/tardis.nvim](https://github.com/fredeeb/tardis.nvim)
- `<leader>gt` - Open git time machine
- `<C-j>` - Next entry in log (older) **(In Tardis buffer)**
- `<C-k>` - Previous entry in log (newer) **(In Tardis buffer)**
- `<leader>gm` - Show revision message for current revision **(In Tardis buffer)**
- `<C-g>` - Replace contents of origin buffer with tardis buffer **(In Tardis buffer)**
- `q` - Quit tardis **(In Tardis buffer)**

### Git Blame - [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)
- `<leader>gB` - Git blame (fugitive)

### LSP Operations - [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- `K` - Show hover information
- `gd` - Go to definition
- `gD` - Go to declaration
- `gI` - Go to implementations
- `gt` - Go to type definitions
- `gr` - Go to references
- `gK` - Signature help
- `<leader>ca` - Code action
- `gl` - Show diagnostics
- `<gr>` - Rename symbol

### Buffer Management - [echasnovski/mini.bufremove](https://github.com/echasnovski/mini.bufremove)
- `<leader>k` - Delete buffer
- `<leader>bD` - Delete buffer (force)
- `<leader>bC` - Close all buffers except current

### Multiple Cursors - [jake-stewart/multicursor.nvim](https://github.com/jake-stewart/multicursor.nvim)
- `<C-k>` - Add cursor above
- `<C-j>` - Add cursor below
- `<Leader>n` - Match all cursors
- `<leader><C-k>` - Skip cursor above
- `<leader><C-j>` - Skip cursor below
- `<M-d>` - Match add cursor
- `<C-n>` - Match add cursor
- `<C-q>` - Match skip cursor
- `<leader>x` - Delete cursor (when multiple active)
- `<c-leftmouse>` - Handle mouse
- `<left>` - Previous cursor (when multiple active)
- `<right>` - Next cursor (when multiple active)
- `<esc>` - Toggle/clear cursors (when multiple active)

### Notes (Obsidian) - [epwalsh/obsidian.nvim](https://github.com/epwalsh/obsidian.nvim)

Obs: You need to enable the plugin on obsidian.lua first to use.

- `<leader>sn` - Search notes
- `<leader>bn` - New note

### Search and Replace - [roobert/search-replace.nvim](https://github.com/roobert/search-replace.nvim)
- `gq` (Visual) - Search replace in selection
- `gq` (Normal) - Search replace current word
- `gQ` - Search replace expression

### Global Search Replace - [nvim-pack/nvim-spectre](https://github.com/nvim-pack/nvim-spectre)
- `<leader>sR` - Replace in files (Spectre)

### Case Conversion - [nicwest/vim-camelsnek](https://github.com/nicwest/vim-camelsnek)
- `<leader>ccs` - Convert to snake_case
- `<leader>ccc` - Convert to CamelCase
- `<leader>ccb` - Convert to camelCaseB

### Telescope Alternate - [otavioschwanck/telescope-alternate.nvim](https://github.com/otavioschwanck/telescope-alternate.nvim)
- `<leader>fa` - Alternate files

### Testing - [vim-test/vim-test](https://github.com/vim-test/vim-test)
- `<leader>ts` - Test nearest
- `<leader>tf` - Re-run failed tests
- `<leader>tv` - Test file
- `<leader>tb` - Go to backtrace
- `<leader>ta` - Test suite
- `<leader>tr` - Test last

### Tmux Integration - [otavioschwanck/tmux-awesome-manager.nvim](https://github.com/otavioschwanck/tmux-awesome-manager.nvim)
- `<leader>lf` - Search commands
- `<leader>l` (Visual) - Send text to tmux
- `<leader>ll` - Search open terminals
- `<leader>lk` - Kill all terms
- `<leader>rr` - Rails console
- `<leader>oy` - Yarn install
- `<leader>oYc` - Yarn check-translations
- `<leader>#` - Run project terms
- `<leader>+` - Rubocop
- `<leader>rb` - Bundle install
- `<leader>rg` - Rails generate
- `<leader>rd` - Rails destroy
- `<leader>ri` - Rails db:migrate

### Claude Code Integration

Integration with Claude Code AI assistant via tmux. Allows sending files, lines, and code selections directly to Claude for review and assistance.

**Setup Commands:**
- `<leader>oc` - Open Claude Code in tmux pane
- `<leader>oC` - Open Claude Code with --resume flag

**Send to Claude:**
- `<leader>lc` - Send current file to Claude (with LSP diagnostics if available)
  - Format: `@relative/path/to/file.rb`
  - Automatically includes LSP diagnostics for the file
- `<leader>lC` - Send current file and line to Claude (with line diagnostics)
  - Format: `@relative/path/to/file.rb:L123`
  - Includes diagnostics for the specific line
- `<leader>ld` - Send all LSP diagnostics to Claude for help
  - Sends file reference with all current diagnostics
- `<leader>lv` (Visual) - Send visual selection to Claude
  - Format: `@relative/path/to/file.rb:L10-L20`
  - Includes the selected code in a markdown code block
- `<leader>lm` - Send custom message to Claude
  - Opens a prompt to type a custom message

**Features:**
- Uses relative paths (e.g., `app/models/user.rb` instead of `/home/user/project/app/models/user.rb`)
- Automatically integrates with LSP to send diagnostics (errors, warnings)
- Supports Claude Code's `@file:L123` syntax for precise file and line references
- Works seamlessly with tmux-awesome-manager

**Tip**: Open Claude Code once with `<leader>oc`, then use `<leader>lc` or `<leader>lC` to quickly send files or lines for review. Claude will understand the file references and can read them directly.

### Git Operations - [Snacks.nvim](https://github.com/folke/snacks.nvim)
- `<leader>gg` - LazyGit (via snacks)

### Treesitter - [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- `g]f` - Swap next function
- `g[f` - Swap previous function

### Argument Manipulation - [AndrewRadev/sideways.vim](https://github.com/AndrewRadev/sideways.vim)
- `]a` - Sideways jump right
- `[a` - Sideways jump left
- `g]a` - Sideways right
- `g[a` - Sideways left
- `aa` - Sideways argument textobj A
- `ia` - Sideways argument textobj I

### Undo Tree - [mbbill/undotree](https://github.com/mbbill/undotree)
- `<leader>u` - Toggle undo tree

### Yank Management - [gbprod/yanky.nvim](https://github.com/gbprod/yanky.nvim)
- `p` - Yanky put after
- `P` - Yanky put before
- `y` - Yanky yank
- `<C-p>` - Yanky cycle forward
- `g<C-p>` - Yanky cycle backward

### Text Surroundings - [kylechui/nvim-surround](https://github.com/kylechui/nvim-surround)
#### Change Surroundings
- `cs])` - Change `[` to `)`
- `cs"'` - Change `"` to `'`
- `cs'<q>` - Change `'` to `<q>`
- `cst"` - Change tag to `"`

#### Delete Surroundings  
- `ds"` - Delete surrounding quotes
- `ds]` - Delete surrounding brackets
- `dst` - Delete surrounding tag

#### Add Surroundings (Normal Mode)
- `ysiw"` - Surround inner word with quotes
- `ysiw]` - Surround inner word with brackets
- `ysiw[` - Surround inner word with brackets (with spaces)
- `ysit` - Surround inner tag with another tag

#### Add Surroundings (Visual Mode)
- `S"` - Surround selection with quotes
- `S]` - Surround selection with brackets
- `S[` - Surround selection with brackets (with spaces)
- `St` - Surround selection with tag

#### Common Examples
- `cs])` - Change `[hello]` to `(hello)`
- `ds"` - Change `"hello"` to `hello`
- `ysiw"` - Change `hello` to `"hello"`
- Select text with `v`, then `S]` - Change `hello` to `[hello]`

## Ruby-Specific Mappings (Ruby files only)

These mappings are only available when editing Ruby files:

### Code Formatting & Quality
- `<leader>=` - Run Rubocop auto-fix on current file
- `<leader>cF` - Run Rubocop auto-fix on current file

### Ruby Development
- `<leader>mc` - Get class name
- `<leader>mC` - Search class name
- `<leader>md` - Comment Rubocop violation
- `<leader>mf` - Create function from text (Normal) / Extract to function (Visual)

### Debugging
- `<leader>d` - Add `binding.pry` debugger
- `<leader>D` - Clear all `binding.pry` statements

### Testing
- `<leader>tc` - Clear RSpec diagnostics
- `<leader>a` - Go to test file
- `<leader>A` - Go to test file (split window)

## CSV-Specific Mappings (CSV files only)

These mappings are only available when editing CSV files:

### Delimiter Configuration
- `<leader>m;` - Set delimiter to semicolon (`;`)
- `<leader>m|` - Set delimiter to pipe (`|`)

### CSV Operations
- `<leader>ma` - Align CSV columns
- `<leader>ms` - Shrink CSV columns
- `<leader>ml` - Lint CSV file

## Tips

1. **Leader Key**: The leader key is `<space>` by default
2. **Which-key**: Press `<leader>` and wait to see available mappings
3. **Help**: Use `:help` followed by a key combination to get more information
4. **Custom Mappings**: Add your own mappings in `lua/neomood/mappings.lua`

## Mode Abbreviations

- `n` - Normal mode
- `i` - Insert mode
- `v` - Visual mode
- `x` - Visual mode (exclusive)
- `c` - Command mode
- `o` - Operator-pending mode
