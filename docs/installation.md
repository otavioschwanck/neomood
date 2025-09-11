# Installation Guide

This guide provides detailed installation instructions for NeoMood on different operating systems.

## Prerequisites

Before installing NeoMood, ensure you have:

- **Neovim 0.11+**
- **Git** for cloning the repository
- **Internet connection** for downloading plugins

## System Requirements

### Required Dependencies

- **ripgrep (rg)** - Fast file searching
- **Python 3** with neovim package
- **Ruby** with neovim gem
- **Node.js** (for JavaScript/TypeScript LSP)
- **tmux** for terminal multiplexing integration (mood spawns a lot of tmux panels)
- **A Nerd Font** for icons (recommended: JetBrains Mono Nerd Font)
- **fd** for faster file finding

### Optional Dependencies
- **Alacritty** for terminal integration (highly recommended)
- **LazyGit** for Git integration (highly recommended) - A simple terminal UI for Git commands with excellent keyboard shortcuts and visual diff support. Essential for the NeoMood workflow as it provides seamless Git operations without leaving the terminal environment.

## Installing dependencies by OS

### Ubuntu/Debian

```bash
# Update package list
sudo apt update

# Install Neovim (latest stable)
sudo apt install neovim

# Install ripgrep
sudo apt install ripgrep

# Install Python 3 and pip
sudo apt install python3 python3-pip

# Install Node.js
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install required packages
pip3 install neovim
gem install neovim

# Install optional tools
sudo apt install fd-find tmux alacritty

# Install LazyGit
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
```

### Arch Linux

```bash
# Install Neovim
sudo pacman -S neovim

# Install ripgrep
sudo pacman -S ripgrep

# Install Python and pip
sudo pacman -S python python-pip

# Install Node.js
sudo pacman -S nodejs npm

# Install required packages
pip install neovim
gem install neovim

# Install tools
sudo pacman -S fd tmux alacritty

# Install LazyGit
sudo pacman -S lazygit
```

### macOS

Using Homebrew:

```bash
# Install Neovim
brew install neovim

# Install ripgrep
brew install ripgrep

# Install Python (if not already installed)
brew install python

# Install Node.js
brew install node

# Install Ruby (if not already installed)
brew install ruby

# Install required packages
pip3 install neovim
gem install neovim

# Install optional tools
brew install fd tmux alacritty

# Install LazyGit
brew install lazygit
```

## Installing NeoMood

### Method 1: Direct Installation

Replace your current Neovim configuration:

First, fork this repository

```bash
# Backup existing configuration
mv ~/.config/nvim ~/.config/nvim.backup

# Clone NeoMood (change username with yours)
git clone git@github.com:yourusername/neomood.git ~/.config/nvim

# Start Neovim (plugins will auto-install)
nvim
```

### Method 2: Test Installation

Try NeoMood without affecting your current setup:

```bash
# Clone to test directory (change username with yours)
git clone git@github.com:yourusername/neomood.git ~/.config/neomood-test

# Start Neovim with test config
NVIM_APPNAME=neomood-test nvim
```

If you like the configuration, you can then make it permanent:

```bash
# Remove or backup current config
mv ~/.config/nvim ~/.config/nvim.backup

# Move test config to main location
mv ~/.config/neomood-test ~/.config/nvim
```

## Upgrading NeoMood

To keep your NeoMood installation up to date with the latest features and bug fixes:

### Setting Up Upstream Remote

If you installed NeoMood by forking the repository, you should add the original repository as an upstream remote:

```bash
# Navigate to your NeoMood directory
cd ~/.config/nvim

# Add the original repository as upstream
git remote add upstream https://github.com/otavioschwanck/neomood.git

# Verify the remote was added
git remote -v
```

### Updating Your Installation

To install updates, merge the upstream changes with your local configuration:

```bash
# Fetch the latest changes from upstream
git fetch upstream

# Merge upstream changes with your master branch
git checkout master
git merge upstream/master
```

If you have made local customizations, you may need to resolve merge conflicts. After merging, restart Neovim to apply any new plugin configurations or updates.

### Updating Plugins

After upgrading NeoMood, also update your plugins:

```vim
:Lazy update
```

## Post-Installation Setup

### 1. Health Check

Run the health check to verify everything is working:

```vim
:checkhealth
```

This will show you any missing dependencies or configuration issues.

### 2. Install a Nerd Font

For proper icon display, install a Nerd Font:

1. Download a Nerd Font from [https://www.nerdfonts.com/](https://www.nerdfonts.com/)
2. Install it on your system
3. Configure your terminal to use the font (on the alacritty config in ~/.config/alacritty/alacritty.toml)

### 3. Language Server Setup

Some language servers may require additional setup:

```vim
" Run in Neovim to install/update language servers
:LspInstall
```


### 4. Tmux + Alacritty Setup (Highly Recommended)

NeoMood is designed to work seamlessly with tmux and Alacritty for the optimal development experience:

### Quick Setup
```bash
# Install TPM (Tmux Plugin Manager)
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Copy configurations
cp ~/.config/neomood/extra/.tmux.conf ~/.tmux.conf
cp ~/.config/neomood/extra/alacritty.toml ~/.config/alacritty/alacritty.toml

# Start tmux and install plugins
tmux
# Press Ctrl+x then I (capital i) to install plugins
```

For detailed tmux workflow setup, see the [Tmux Workflow Guide](tmux-workflow.md).

### 5. LazyGit Neovim Remote Configuration (Optional)

To configure LazyGit to open files directly in Neovim when using the 'e' key, add this configuration to your shell profile:

**Add to ~/.zshrc or ~/.bashrc:**
```bash
# Use Neovim Remote
if [ -n "$NVIM_LISTEN_ADDRESS" ]; then
    alias nvim=nvr -cc split --remote-wait +'set bufhidden=wipe'
fi

if [ -n "$NVIM_LISTEN_ADDRESS" ]; then
    export VISUAL="nvr -cc split --remote-wait +'set bufhidden=wipe'"
    export EDITOR="nvr -cc split --remote-wait +'set bufhidden=wipe'"
else
    export VISUAL="nvim"
    export EDITOR="nvim"
fi
```

**Add to LazyGit configuration (~/.config/lazygit/config.yml):**
```yaml
os:
  editPreset: "nvim-remote"
  edit: 'nvr --remote-send ''<CMD>q<CR><CMD>lua vim.cmd("e " .. {{filename}})<CR>'''
  editAtLine: 'nvr --remote-send ''<CMD>q<CR><CMD>lua vim.cmd("e " .. {{filename}})<CR>{{line}}G'''
```

This allows you to press 'e' on any file in LazyGit and have it open directly in your current Neovim instance.

### 6. AI Code Completion Setup (Optional)

NeoMood includes Codeium for AI-powered code completion. To enable it:

```vim
:Codeium Auth
```

Follow the prompts to authenticate with Codeium. If you don't want AI completion, you can remove the plugin by deleting `lua/plugins/codeium.lua`.

### 7. Plugin Updates (Optional)

To update all plugins:

```vim
:Lazy update
```


## Troubleshooting

### Common Issues

**Solargraph not working**:
- Check if Solargraph is installed via Mason instead of using the system Ruby installation (prefer using outside Mason, to remove, just run `:MasonUninstall solargraph`)

- If Rubocop and Solargraph are not installed in your project on gemfile, you can remove the `cmd = ...` lines at `lua/plugins/lsp.lua:47` and `lua/plugins/lsp.lua:62` (by default, we try to use with bundler)
- If Solargraph still doesn't work, try using `ruby_lsp` instead by adding to `lsp.lua`:

  ```lua
  vim.lsp.config("ruby_lsp", {})
  vim.lsp.enable("ruby_lsp")
  ```

**nvim-treesitter-endwise errors when editing files**:
- Run `:Lazy update`
- Then run `:Lazy build nvim-treesitter-endwise`

**Plugins not loading**:
- Ensure you have internet connection
- Try `:Lazy` and then press `I` to install plugins manually

**LSP not working**:
- Run `:checkhealth lsp` to diagnose issues
- Ensure language servers are installed for your languages

**Icons not displaying**:
- Install a Nerd Font and configure your terminal
- Check `:checkhealth` for font-related issues

**Slow startup**:
- Run `:Lazy profile` to identify slow plugins
- Consider disabling unused plugins

### Getting Help

If you encounter issues:

1. Check `:checkhealth` output
2. Review the error messages carefully
3. Open an issue with your system details and error logs

## Next Steps

After installation:

1. **Set up tmux workflow** - See [tmux workflow guide](tmux-workflow.md) for the complete development environment
2. Review the [key mappings](mappings.md)
3. Explore the [plugin documentation](plugins.md)
4. Check the [quick reference handbook](../handbook.md)
5. Start customizing your configuration!
