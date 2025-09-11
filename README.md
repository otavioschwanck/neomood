# NeoMood

![neomood](https://i.imgur.com/ODqoH3t.png)

A performance-optimized Neovim configuration designed for Ruby on Rails and JavaScript/TypeScript development.

## Features

- **Ready for Rails and JavaScript**: Pre-configured LSP, snippets, and tools for Ruby on Rails and JavaScript/TypeScript development
- **Optimized for Performance**: Fast startup times and efficient plugin management
- **Quality LSP Configuration**: Fully configured language servers with intelligent code completion, diagnostics, and formatting
- **Custom Rails Workflow Functions**: Enhanced productivity with custom functions for Rails development patterns

## Installation

### Quick Start

Clone this repository to your Neovim configuration directory:

```bash
# Backup your existing config (optional)
mv ~/.config/nvim ~/.config/nvim.backup

# Clone NeoMood (from your fork)
git clone git@github.com:yourusername/neomood.git ~/.config/nvim
```

### Try Before You Commit

To test NeoMood without replacing your current configuration:

```bash
# Clone to a temporary directory (change username for yourname, after you forked this repository)
git clone git@github.com:yourusername/neomood.git ~/.config/neomood-test

# Start Neovim with the test configuration
NVIM_APPNAME=neomood-test nvim
```

## Requirements

- **Neovim 0.11+**
- **ripgrep (rg)** - For fast file searching
- **Python 3** with neovim package: `pip3 install neovim`
- **Ruby** with neovim gem: `gem install neovim`
- **Node.js** (for JavaScript/TypeScript LSP support)

Run `:checkhealth` in Neovim to verify all requirements are met.

## Upgrading

To receive updates while maintaining your customizations:

1. **Add NeoMood as upstream remote**:
   ```bash
   cd ~/.config/nvim
   git remote add upstream https://github.com/otavioschwanck/neomood.git
   ```

2. **Fetch and merge updates**:
   ```bash
   git fetch upstream
   git merge upstream/master
   ```

3. **Resolve any conflicts** and commit your merge.

This workflow allows you to get new features while preserving your personal customizations.

## Customization

NeoMood is designed to be forked and customized. Key files to modify:

- `lua/neomood/options.lua` - Vim options and settings
- `lua/neomood/mappings.lua` - Key mappings
- `lua/plugins/` - Plugin configurations
- `lua/neomood/autocmds.lua` - Auto commands

## Documentation

- [Installation Guide](docs/installation.md) - Detailed installation instructions for different operating systems
- [Tmux Workflow](docs/tmux-workflow.md) - Essential tmux + Alacritty integration for optimal development
- [Key Mappings](docs/mappings.md) - Complete list of key mappings
- [Plugin Reference](docs/plugins.md) - Overview of all included plugins
- [Quick Reference](handbook.md) - Essential mappings and commands

## Support

If you encounter issues:

1. Run `:checkhealth` to verify your environment
2. Check the [documentation](docs/) for troubleshooting
3. Open an issue with your environment details

## License

MIT License - Feel free to fork and customize for your needs.
