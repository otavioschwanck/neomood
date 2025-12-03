# Plugin Reference

This document provides a comprehensive overview of all plugins included in NeoMood, organized by category with descriptions and GitHub links.

## Core Navigation & File Management

### [Arrow](https://github.com/otavioschwanck/arrow.nvim)
**Purpose**: Persistent file bookmarks and quick navigation  
**Features**: Git branch-aware bookmarks, path-based saving, quick navigation with H/L keys  
**Key Mappings**: `H` (previous), `L` (next)

### [FZF Lua](https://github.com/ibhagwan/fzf-lua)
**Purpose**: Fuzzy finder for files, buffers, grep, git status, and more  
**Features**: Live grep, file search, recent files, help tags, git status  
**Key Mappings**: `<leader><space>` (files), `<leader>sp` (live grep), `<leader>,` (buffers)

### [FZF Lua Explorer](https://github.com/otavioschwanck/fzf-lua-explorer.nvim)
**Purpose**: File explorer with FZF integration  
**Features**: An quick explorer to navigate/create files.
**Key Mappings**: `<leader>.` (explorer)

### [Neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim)
**Purpose**: File explorer sidebar  
**Features**: Tree-style file browser, git integration, file operations  
**Key Mappings**: `<leader>e` (toggle), `<leader>E` (open current file)

## Editor Enhancement

### [Flash](https://github.com/folke/flash.nvim)
**Purpose**: Enhanced navigation and jumping within files  
**Features**: Character-based jumping, treesitter search, remote flash  
**Key Mappings**: `s` (flash jump), `R` (treesitter search)

### [Multiple Cursors](https://github.com/jake-stewart/multicursor.nvim)
**Purpose**: Multiple cursor editing support  
**Features**: Add cursors vertically, match-based cursor addition, mouse support  
**Key Mappings**: `<C-j>/<C-k>` (vertical cursors), `<C-n>` (match-based)

### [Autopairs](https://github.com/windwp/nvim-autopairs)
**Purpose**: Automatic bracket/quote pairing  
**Features**: Custom rules for spacing, disabled in certain filetypes  
**Configuration**: Smart spacing rules for brackets, quotes, and parentheses

## Code Completion & LSP

### [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
**Purpose**: Completion engine  
**Features**: Tab/S-Tab navigation, snippet expansion, LSP integration  
**Sources**: LSP, buffer, path, cmdline, LuaSnip, calc

### [LSP Config](https://github.com/neovim/nvim-lspconfig)
**Purpose**: LSP client configuration  
**Features**: Auto-install LSPs, Ruby (Solargraph/Rubocop), TypeScript, Lua, JSON, YAML, CSS  
**Key Mappings**: `gd` (definition), `gr` (references), `K` (hover), `<leader>ca` (code action)

### [Mason](https://github.com/williamboman/mason.nvim)
**Purpose**: LSP server, linter, and formatter installer  
**Auto-installs**: lua_ls, jsonls, yamlls, cssls  
**Integration**: Managed via LSP config

## AI & Code Generation

### [Codeium](https://github.com/Exafunction/codeium.vim)
**Purpose**: AI-powered code completion  
**Features**: Accept suggestions, cycle completions, accept next word  
**Key Mappings**: `<C-j>` (accept), `<C-b>` (cycle), `<C-f>` (accept word), `<C-]>` (clear)

## Formatting & Linting

### [Conform](https://github.com/stevearc/conform.nvim)
**Purpose**: Code formatting  
**Features**: Format on save, async formatting, multiple formatters  
**Formatters**: Stylua (Lua), Prettier (JS/TS/JSX/TSX)

## Git Integration

### [Gitsigns](https://github.com/lewis6991/gitsigns.nvim)
**Purpose**: Git decorations and hunk management  
**Features**: Line signs, hunk navigation, staging/resetting, blame  
**Key Mappings**: `]g`/`[g` (hunk navigation), `<leader>gs` (stage), `<leader>gb` (blame)

### [Diffview](https://github.com/sindrets/diffview.nvim)
**Purpose**: Git diff viewer and file history browser  
**Features**: Side-by-side diff view, file history with commit details, commit browsing  
**Key Mappings**: `<leader>gd` (current file history), `<leader>gh` (all commits history), `<leader>qd` (close diffview)

### [Tardis](https://github.com/fredeeb/tardis.nvim)
**Purpose**: Git time machine for browsing file history  
**Features**: Navigate through git history, view file changes over time, commit restoration  
**Key Mappings**: `<leader>gt` (open time machine), `<C-j>/<C-k>` (navigate history), `<leader>gm` (show commit message), `<C-g>` (restore version)

### [Vim Fugitive](https://github.com/tpope/vim-fugitive)
**Purpose**: Git integration
**Features**: Git commands, blame, diff, merge conflict resolution
**Key Mappings**: `<leader>gB` (git blame)

### [GitHub PR Reviewer](https://github.com/otavioschwanck/github-pr-reviewer.nvim)
**Purpose**: GitHub Pull Request review and management
**Features**: Review PRs from Neovim, suggest changes, open files from PR, FZF integration
**Key Mappings**: `<leader>p` (PR review menu), `<leader>p` (suggest change in visual mode)
**Configuration**: FZF picker integration, auto-open files on review

## Visual Enhancements

### [Catppuccin](https://github.com/catppuccin/nvim)
**Purpose**: Color scheme  
**Features**: Mocha flavor, multiple integrations (CMP, Gitsigns, Telescope, etc.)  
**Configuration**: Custom highlights, integration with various plugins

### [Lualine](https://github.com/nvim-lualine/lualine.nvim)
**Purpose**: Status line  
**Features**: Catppuccin theme, Arrow integration, path shortening, tmux integration  
**Components**: Mode, filename, diagnostics, git branch, location

### [Dashboard](https://github.com/nvimdev/dashboard-nvim)
**Purpose**: Start screen  
**Features**: ASCII art logo, quick actions (restore session, find files, Arrow)  
**Theme**: Doom theme with custom NEOVIM logo

### [Indent Blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
**Purpose**: Indentation guides  
**Features**: Rainbow colors, scope highlighting, Ruby-specific nodes  
**Configuration**: Custom highlight colors, tab character display

### [Web Dev Icons](https://github.com/nvim-tree/nvim-web-devicons)
**Purpose**: File type icons  
**Features**: Custom Ruby icons with specific colors

## Language Support

### [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
**Purpose**: Syntax highlighting and text objects  
**Languages**: Ruby, HTML, CSS, JS/TS, Solidity, YAML, JSON, Lua, Bash, TSX  
**Features**: Auto-install, text object swapping, endwise support  
**Dependencies**: [nvim-treesitter-endwise](https://github.com/RRethy/nvim-treesitter-endwise)

### [LazyDev](https://github.com/folke/lazydev.nvim)
**Purpose**: Lua development enhancements  
**Features**: Better Lua LSP support, library definitions

## Testing & Development

### [Vim Test](https://github.com/vim-test/vim-test)
**Purpose**: Test runner integration  
**Features**: RSpec integration, custom formatter, failure navigation  
**Key Mappings**: `<leader>ts` (nearest), `<leader>tf` (failures), `<leader>tv` (file)

### [Tmux Awesome Manager](https://github.com/otavioschwanck/tmux-awesome-manager.nvim)
**Purpose**: Tmux session and terminal management  
**Features**: Project-specific commands, Rails shortcuts, terminal integration  
**Key Mappings**: `<leader>rr` (Rails console), `<leader>ll` (list terminals)

## Text Manipulation

### [Yanky](https://github.com/gbprod/yanky.nvim)
**Purpose**: Enhanced yank/paste operations  
**Features**: Yank ring, cycle through yanks, cursor position preservation  
**Key Mappings**: `<c-p>` (cycle forward), `g<c-p>` (cycle backward)

### [Search Replace](https://github.com/roobert/search-replace.nvim)
**Purpose**: Enhanced search and replace functionality  
**Features**: Visual selection replacement, word-under-cursor replacement  
**Key Mappings**: `gq` (replacement operations)

### [Spectre](https://github.com/nvim-pack/nvim-spectre)
**Purpose**: Project-wide search and replace  
**Features**: Live preview, undo support, multiple file operations  
**Key Mappings**: `<leader>sR` (open Spectre)

### [Vim CamelSnek](https://github.com/nicwest/vim-camelsnek)
**Purpose**: Case conversion between camelCase and snake_case  
**Key Mappings**: `<leader>ccs` (snake_case), `<leader>ccc` (CamelCase), `<leader>ccb` (camelCaseB)

### [Sideways](https://github.com/AndrewRadev/sideways.vim)
**Purpose**: Argument manipulation  
**Features**: Move and jump between function arguments  
**Key Mappings**: `]a`/`[a` (jump), `g]a`/`g[a` (move), `aa`/`ia` (text objects)

## Utility Plugins

### [Persistence](https://github.com/folke/persistence.nvim)
**Purpose**: Session management  
**Features**: Auto-save sessions, restore on startup  
**Configuration**: Custom session directory, pre-save hooks

### [Which Key](https://github.com/folke/which-key.nvim)
**Purpose**: Keybinding help and organization  
**Features**: Popup help, organized keybinding groups  
**Groups**: Buffer, Code, File, Git, Help, Tmux, Rails, Search, Test, Window

### [Undotree](https://github.com/mbbill/undotree)
**Purpose**: Undo history visualization  
**Features**: Tree-style undo history, diff preview  
**Key Mappings**: `<leader>u` (toggle)

### [Mini.bufremove](https://github.com/echasnovski/mini.bufremove)
**Purpose**: Smart buffer deletion  
**Features**: Delete buffer without closing window  
**Key Mappings**: `<leader>k` (delete buffer), `<leader>bD` (force delete)

### [Mini.comment](https://github.com/echasnovski/mini.comment)
**Purpose**: Smart commenting  
**Features**: Language-aware commenting, toggle comments  
**Key Mappings**: `gc` (toggle comment)

## File Type Specific

### [Rainbow CSV](https://github.com/cameron-wags/rainbow_csv.nvim)
**Purpose**: CSV file highlighting and manipulation  
**Supported Formats**: CSV, TSV, pipe-separated, RFC CSV  
**Features**: Rainbow column highlighting, CSV commands, SPC m to see shortcuts.

### [Obsidian](https://github.com/epwalsh/obsidian.nvim)
**Purpose**: Obsidian note-taking integration  
**Features**: Note search, new note creation, workspace integration  
**Key Mappings**: `<leader>sn` (search notes), `<leader>bn` (new note)

### [Markdown Todo](https://github.com/otavioschwanck/markdown-todo.nvim)
**Purpose**: Markdown todo management  
**Features**: Todo highlighting, completion tracking

## Additional Utility Plugins

### [Snacks.nvim](https://github.com/folke/snacks.nvim)
**Purpose**: Collection of small QoL plugins  
**Features**: LazyGit integration, notifications, terminal utilities, dashboard enhancements  
**Key Mappings**: `<leader>gg` (LazyGit)

### [Nvim Surround](https://github.com/kylechui/nvim-surround)
**Purpose**: Surround text with brackets, quotes, and other delimiters  
**Features**: Change surroundings (cs), delete surroundings (ds), add surroundings (ys), visual mode surround (S)  
**Key Operations**: `cs])` (change `[` to `)`), `ds"` (delete quotes), `ysiw"` (surround word with quotes), `S"` (surround selection)

### Core Utilities
- [**Vim Rails**](https://github.com/tpope/vim-rails) - Rails navigation and commands
- [**Ruby Toolkit**](https://github.com/otavioschwanck/ruby-toolkit.nvim) - Ruby-specific enhancements
- [**Friendly Snippets**](https://github.com/rafamadriz/friendly-snippets) - Snippet collection
- [**Telescope Alternate**](https://github.com/otavioschwanck/telescope-alternate.nvim) - Alternate between related files
- [**New File Template**](https://github.com/otavioschwanck/new-file-template.nvim) - Auto file templates

### Text Objects & Manipulation
- [**Vim Textobj Quotes**](https://github.com/beloglazov/vim-textobj-quotes) - Quote text objects
- [**Vim Indent Object**](https://github.com/michaeljsmith/vim-indent-object) - Indentation text objects
- [**Sort**](https://github.com/sQVe/sort.nvim) - Sort lines and selections
- [**SplitJoin**](https://github.com/AndrewRadev/splitjoin.vim) - Split/join code constructs
- [**Switch**](https://github.com/AndrewRadev/switch.vim) - Switch between related words
- [**Template String**](https://github.com/axelvc/template-string.nvim) - Template string conversion

### Visual Enhancements
- [**Nvim Colorizer**](https://github.com/norcalli/nvim-colorizer.lua) - Color code highlighting
- [**Rainbow Delimiters**](https://github.com/HiPhish/rainbow-delimiters.nvim) - Rainbow bracket highlighting

### System Integration
- [**Vim Eunuch**](https://github.com/tpope/vim-eunuch) - Unix commands in Vim
- [**Bufferize**](https://github.com/AndrewRadev/bufferize.vim) - Buffer command output
- [**Vim Table Mode**](https://github.com/dhruvasagar/vim-table-mode) - Table editing

## Plugin Statistics

- **Total Plugins**: 40+
- **Main Configuration Files**: 30
- **No-Setup Plugins**: 22
- **Primary Focus**: Ruby on Rails and JavaScript/TypeScript development
- **Categories**: Navigation, LSP, Git, Testing, Text Manipulation, Visual Enhancement

## Customization

Most plugins can be customized by editing their respective configuration files in `lua/plugins/`. For extensive customization, consider:

1. **Disabling Plugins**: Comment out or remove plugin specifications
2. **Adding Plugins**: Create new files in `lua/plugins/` following the existing pattern
3. **Modifying Configurations**: Edit the `opts` or `config` functions in plugin files
4. **Key Mappings**: Modify mappings in plugin files or in `lua/neomood/mappings.lua`

See the [customization guide](customization.md) for detailed instructions.
