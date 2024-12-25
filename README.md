# Documented Aliases Plugin for Zsh

A Zsh plugin that enhances the `alias` command to show documentation comments alongside your aliases.

## Features

- Shows comments that appear directly above alias definitions when listing aliases
- Preserves all standard `alias` command functionality
- Works with aliases defined in:
  - `~/.zshrc`
  - Oh-My-Zsh custom plugins (`~/.oh-my-zsh/custom/**/*.zsh`)

## Usage

Simply type `alias` without arguments to see all your aliases along with their documentation comments:

```zsh
alias vi='nvim .' # Opens Neovim in current directory
alias gs='git status' # Git status shortcut
```

## Installation

### Manual

1. Clone this repository
2. Source `documented-aliases.plugin.zsh` in your `.zshrc`:
   ```zsh
   source /path/to/documented-aliases.plugin.zsh
   ```

### Oh-My-Zsh

1. Clone this repository into `$ZSH_CUSTOM/plugins/documented-aliases`
2. Add `documented-aliases` to your plugin list in `.zshrc`:
   ```zsh
   plugins=(... documented-aliases)
   ```
