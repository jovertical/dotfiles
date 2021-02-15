## About dotfiles

This is just a random collection of my different configurations.

## Migration guide

```bash
# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install oh-my-zsh plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Install spaceship theme
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme" 

# Replace the .zshrc file
cp .zshrc $HOME

# Copy bash aliases
cp .bash_aliases ~/.bash_aliases

# Finally
source ~/.zshrc
```

## Hyper migration

```bash
# First, install Fira Code fonts (for powerline fonts)
brew tap homebrew/cask-fonts
brew install --cask font-fira-code

# Then install Hyper
brew install --cask hyper

# Install Hypest theme
hyper i hyper-hypest

# Install plugins
hyper i hyper-tabs-enhanced
hyper i hyper-search

# Finally, reload configuration
cp .hyper.js $HOME
```
